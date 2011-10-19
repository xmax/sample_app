if config['ui']
	inside "app/assets/javascripts" do
		get "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.min.js", "jqueryui.js"
	end
else
	say_wizard "jQuery installed by default in Rails 3.1."
end