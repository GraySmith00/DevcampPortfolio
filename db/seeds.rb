# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Four loko literally authentic DIY man bun hexagon, disrupt copper mug. Four dollar toast kogi blog, snackwave small batch iPhone wayfarers bitters mumblecore. Cronut +1 typewriter stumptown sartorial. Next level vaporware whatever swag cold-pressed. Lumbersexual live-edge ramps, literally waistcoat post-ironic banh mi knausgaard before they sold out air plant retro lyft. Dreamcatcher umami fam man braid, letterpress aesthetic wolf asymmetrical try-hard church-key photo booth messenger bag vaporware +1 cold-pressed. Tilde copper mug bitters, distillery tumeric banjo meh photo booth venmo wolf tbh ethical.",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 Skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Iceland brooklyn raclette semiotics, organic ethical drinking vinegar single-origin coffee offal austin blue bottle fixie knausgaard salvia. Whatever hella affogato, wolf dreamcatcher vexillologist chillwave tousled asymmetrical drinking vinegar lo-fi sustainable kombucha hot chicken fingerstache. Copper mug artisan williamsburg, brooklyn letterpress you probably haven't heard of them vegan slow-carb crucifix air plant sriracha. Copper mug master cleanse snackwave, VHS disrupt bicycle rights etsy gochujang biodiesel hexagon portland butcher.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Iceland brooklyn raclette semiotics, organic ethical drinking vinegar single-origin coffee offal austin blue bottle fixie knausgaard salvia. Whatever hella affogato, wolf dreamcatcher vexillologist chillwave tousled asymmetrical drinking vinegar lo-fi sustainable kombucha hot chicken fingerstache. Copper mug artisan williamsburg, brooklyn letterpress you probably haven't heard of them vegan slow-carb crucifix air plant sriracha. Copper mug master cleanse snackwave, VHS disrupt bicycle rights etsy gochujang biodiesel hexagon portland butcher.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

puts "9 portfolio items created"

3.times do |technology| 
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"