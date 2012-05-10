Factory.define :user do |user|
  user.name                  "username"
  user.password              "password"
end

Factory.define :post do |post|
  post.title         "Codename: Obtvse"
  post.slug          "codename-obtvse"
  post.content       "Earlier today I was browsing Hacker News and was a bit let down by a post I ran across by recent HN front-pager"
  post.draft         true
end
