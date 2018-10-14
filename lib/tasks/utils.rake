namespace :utils do
  desc "Popular o banco de dados." # Descrição da task
  task seed: :environment do
    
    # tarefa de testes de contatos em modo de desenvolvimento
    puts "Gerando os contatos (Contacts)..."
      10.times do |i|
        Contact.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          kind: Kind.all.sample, # sample vai varrer todos os elementos do Kind e escolher um aleatoriamente.
          rmk: LeroleroGenerator.sentence([1,2,3,4,5].sample)
        )
      end
    puts "Gerando os contatos (Contacts)...[OK]"
  
    puts "Gerando os endereços (Adresses)..."
      Contact.all.each do |contact|
        Address.create!(
          street: Faker::Address.street_name,
          city: Faker::Address.city,
          state: Faker::Address.state,
          contact: contact
        )
      end
    puts "Gerando os endereços (Adresses)...[ok]"

    puts "Gerando os telefones (Phones)..."
      Contact.all.each do |contact|
        Random.rand(1..5).times do |i|
          Phone.create!(
            phone: Faker::PhoneNumber.phone_number,
            contact: contact
          )
        end
      end
    puts "Gerando os telefones (Phones)...[ok]"

  end

end
