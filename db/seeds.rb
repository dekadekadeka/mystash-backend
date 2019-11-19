# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Pattern.destroy_all
Notion.destroy_all
Yarn.destroy_all
Fabric.destroy_all
Project.destroy_all

User.create(
    name: "Deka",
    username: "deka",
    password_digest: "cobbme26"
)

9.times do
    User.create(
        name: Faker::FunnyName.two_word_name,
        username: Faker::Internet.username,
        password_digest: Faker::Internet.password
    )
end

10.times do
    Pattern.create(
        brand: Faker::App.name,
        number: Faker::Alphanumeric.alphanumeric(5),
        front_pic: "https://via.placeholder.com/150x300?text=Pattern+Front",
        back_pic: "https://via.placeholder.com/150x300?text=Pattern+Back"
    )
end

10.times do
    Notion.create(
        name: Faker::Commerce.product_name,
        brand: Faker::Beer.brand,
        size: Faker::Measurement.height,
        color: Faker::Commerce.color,
        description: Faker::Company.bs,
        user_id: User.all.sample.id
    )
end

10.times do
    Yarn.create(
        brand: Faker::Appliance.brand,
        name: Faker::Cannabis.strain,
        color: Faker::Commerce.color,
        size: rand(6),
        lot: Faker::Alphanumeric.alphanumeric(5),
        pic: "https://via.placeholder.com/150?text=Yarn+Pic",
        user_id: User.all.sample.id
    )
end

10.times do
    Fabric.create(
        fabric_type: Faker::Construction.material,
        color: Faker::Commerce.color,
        size: Faker::Measurement.length,
        description: Faker::Company.bs,
        name: Faker::Cannabis.strain,
        pic: "https://via.placeholder.com/150?text=Fabric+Pic",
        user_id: User.all.sample.id
    )
end

10.times do
    Project.create(
        user_id: User.all.sample.id,
        pattern_id: Pattern.all.sample.id
    )
end