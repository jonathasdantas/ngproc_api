class JusticeProcess < ApplicationRecord
  belongs_to :user
  belongs_to :judging_body
  belongs_to :process_class

  has_many :process_movements

  validates_presence_of :process_class, :judging_body
  validates :npu, presence: true, numericality: { only_integer: true }, uniqueness: true, length: { maximum: 20 }

  # Get NPU with #######-##.####.#.##.#### format
  def formatted_npu
    npu[0..6] + '-' + npu[7..8] + '.' + npu[9..12] + '.' + npu[13] + '.' +
      npu[14..15] + '.' + npu[16..19]
  end

  def to_s
    "#{npu} #{judging_body} #{process_class} #{district}"
  end
end
