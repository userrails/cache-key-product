namespace :product do 
  desc "create products"
  task :create => :environment do 
    100.times do |i|
      # for j in (1..100)
        Product.create(name: "Product-#{i}", price: 1+1, description: "This is description This is description This is description This is description")
       end
    # end
  end
end