

# Blog.delete_all

10.times.each do |n|
  Blog.create!(title: "test_#{n}", body: "This is test_#{n}")
end
