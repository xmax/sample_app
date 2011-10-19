Factory.define :user do |user|
	user.name		"Max"
	user.email		"ua.xmax@gmail.com"
	user.password	"mypass"
	user.password_confirmation	"mypass"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
	micropost.content "Foo bar"
	micropost.association :user
end
