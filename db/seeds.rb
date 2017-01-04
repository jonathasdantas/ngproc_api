# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin User
admin_user = User.new
admin_user.email = 'admin@admin.com'
admin_user.password = '123456'
admin_user.password_confirmation = '123456'
admin_user.save!

# Districts
districts = [
  District.create(name: 'Recife', area: 3),
  District.create(name: 'Olinda', area: 2),
  District.create(name: 'Jaboatão dos Guararapes', area: 2),
  District.create(name: 'Paulista', area: 2),
  District.create(name: 'Cabo de Santo Agostinho', area: 2),
  District.create(name: 'Ipojuca', area: 2),
  District.create(name: 'Tamandaré', area: 2),
  District.create(name: 'Igaraçu', area: 2),
  District.create(name: 'Caruaru', area: 1),
  District.create(name: 'Serra Talhada', area: 1),
  District.create(name: 'Salgueiro', area: 1),
  District.create(name: 'Petrolina', area: 1),
  District.create(name: 'Cabrobó', area: 1),
  District.create(name: 'Oricuri', area: 1)
]

# Judging Bodies
judging_bodies = []

districts.each do | district |
  judging_bodies << JudgingBody.create(name: 'Primeira Vara Cível', district: district)
  judging_bodies << JudgingBody.create(name: 'Segunda Vara Cível', district: district)
  judging_bodies << JudgingBody.create(name: 'Terceira Vara Cível', district: district)
  judging_bodies << JudgingBody.create(name: 'Quarta Vara Cível', district: district)
  judging_bodies << JudgingBody.create(name: 'Quinta Vara Cível', district: district)
  judging_bodies << JudgingBody.create(name: 'Primeira Vara Criminal', district: district)
  judging_bodies << JudgingBody.create(name: 'Segunda Vara Criminal', district: district)
  judging_bodies << JudgingBody.create(name: 'Terceira Vara Criminal', district: district)
  judging_bodies << JudgingBody.create(name: 'Quarta Vara Criminal', district: district)
  judging_bodies << JudgingBody.create(name: 'Quinta Vara Criminal', district: district)
end

# Processes Classes
process_classes = [
  ProcessClass.create(name: 'Divórcio', group: 'Família'),
  ProcessClass.create(name: 'Adoção', group: 'Infância'),
  ProcessClass.create(name: 'Guarda', group: 'Infância'),
  ProcessClass.create(name: 'Alimentos', group: 'Cível'),
  ProcessClass.create(name: 'Rescisória', group: 'Cível'),
  ProcessClass.create(name: 'Consignação em Pagamento', group: 'Cível'),
  ProcessClass.create(name: 'Inventário', group: 'Cível'),
  ProcessClass.create(name: 'Reintegração de Posse', group: 'Cível'),
  ProcessClass.create(name: 'Interdição', group: 'Cível'),
  ProcessClass.create(name: 'Alvará Judicial', group: 'Cível'),
  ProcessClass.create(name: 'Despejo', group: 'Cível')
]

# Justice Processes
processes = []

(0..100).each do
  processes << JusticeProcess.create(
    {
      npu: "#{rand(10000)}",
      user: admin_user,
      process_class: process_classes[rand(process_classes.length)],
      judging_body: judging_bodies[rand(judging_bodies.length)],
      priority: [true, false].sample,
      secret: [true, false].sample,
    }
  )
end

# Processes Movements
movements_names = [
  'Conclusão',
  'Distribuição Automática',
  'Juntada',
  'Expedição de Mandado',
  'Despacho',
  'Sentença',
  'Decisão'
]

processes.each do | process |
  (0..10).each do | i |
    ProcessMovement.create(
      user: admin_user,
      justice_process: process,
      name: movements_names[rand(7)],
      description: 'Descrição do Movimento'
    )
  end
end
