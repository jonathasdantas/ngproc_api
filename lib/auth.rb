require 'jwt'

class Auth
  # Algorithm to Encode
  ALGORITHM = 'HS256'

  # Encode Payload to JWT Token
  def self.encode(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base, ALGORITHM)
  end

  # Decode the JWT Token
  def self.decode(token)
    JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: ALGORITHM).first
  rescue
    nil
  end
end