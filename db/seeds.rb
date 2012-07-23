# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MovementType.create([
                     {:name => 'Compra', :is_income => true},
                     {:name => 'Merma',  :is_income => false},
                     {:name => 'Venta',  :is_income => false}
                    ])

emp = ProductType.create(:name => 'Empanada')
pan = ProductType.create(:name => 'Panque')
cup = ProductType.create(:name => 'Cupcake')
gra = ProductType.create(:name => 'Granos')
lec = ProductType.create(:name => 'Leche')
#ton = ProductType.create(:name => 'Tonos')

Product.create([
                {:name => 'Pepperoni', :product_type => emp},
                {:name => 'Jamon',     :product_type => emp},
                {:name => 'Rajas',     :product_type => emp},

                {:name => 'Elote', :product_type => pan},
                {:name => 'Nata',  :product_type => pan},

                {:name => 'Vainilla',  :product_type => cup},
                {:name => 'Chocolate', :product_type => cup},
                {:name => 'Cafe',      :product_type => cup},

                {:name => 'Entera',     :product_type => lec},
                {:name => 'Descremada', :product_type => lec},
                {:name => 'Soya',       :product_type => lec},

                {:name => 'Oaxaca',   :product_type => gra},
                {:name => 'Veracruz', :product_type => gra},
                {:name => 'Guerrero', :product_type => gra},
                {:name => 'Nayarit',  :product_type => gra},
                {:name => 'Chiapas',  :product_type => gra}

#                {:name => '', :product_type => X},
               ])

Provider.create(:name => 'Desconocido')
