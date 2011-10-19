namespace :db do
	desc "Fill database with sample data"
	task :populate => :environment do
		Rake::Task['db:reset'].invoke
		admin = User.create!(	:name => "Max",
								:email => "ua.xmax@gmail.com",
								:password => "159357",
								:password_confirmation => "159357"
							)
		admin.toggle!(:admin)
		User.create!(	:name => "Example User",
						:email => "example@railstutorial.com",
						:password => "foobar",
						:password_confirmation => "foobar"
					)
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@example.com"
			password = "password"
			User.create!(	:name => name,
							:email => email,
							:password => password,
							:password_confirmation => password
						)
		end
		
		User.all( :limit => 6 ).each do |user|
			50.times do
				user.microposts.create!( :content => Faker::Lorem.sentence(5) )
			end
		end
	end #populate
end
