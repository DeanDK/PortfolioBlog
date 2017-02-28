3.times do |topic|
  Topic.create!(
    title: "#{topic}"
  )
end

puts "3 Topics Created"
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "This is my try to test seeds in order for me to understand rails much better",
    topic_id: Topic.last.id
    
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Ruby on Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portofolio_item|
Portofolioo.create!(
  title: "Portofolio title: #{portofolio_item}",
  subtitle: "Ruby on Rails" ,
  body: "BLALALALALALALALALALlalaallalalaalallalalalalalalalaalalalalalallalalalalalalalalalalalalalal" ,
  main_image: "http://placehold.it/600x400" ,
  thumb_image:"http://placehold.it/350x150" ,
  )
end

1.times do |portofolio_item|
Portofolioo.create!(
  title: "Portofolio title: #{portofolio_item}",
  subtitle: "Angular" ,
  body: "BLALALALALALALALALALlalaallalalaalallalalalalalalalaalalalalalallalalalalalalalalalalalalalal",
   main_image: "http://placehold.it/600x400" ,
  thumb_image:"http://placehold.it/350x150" ,

  )
end

puts "9 skills created"