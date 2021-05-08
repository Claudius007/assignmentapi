# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


work_order  = WorkOrder.create([{
                title: 'Procure equipment for scotia hospital',
                description: 'Call the equipment supplier and place the order',
                deadline: Time.now.advance(months: 1)
            },
            {
                title: 'Transfer the emergency ward to first floor',
                description: 'In other to save time taken to attend to emergency patients move ward to first floor',
                deadline: Time.now.advance(months: 2)
            },
            {
                title: 'Procure surgical clothes for doctors',
                description: 'Call the supplier and purchase the new clothes for the new doctors',
                deadline: Time.now.advance(weeks: 1)
            }])



        workers  = Worker.create([{
                 name: 'Moh Farah',
                 company_name: 'rolling stone hospital',
                 email: 'mo@rollingstone.com',
                 work_order: work_order.first
             },
             {
                name: 'Micheal Angelo',
                company_name: 'rolling stone hospital',
                email: 'mia@rollingstone.com',
                work_order: work_order.first
            }])