# Verify domain ownership application

This is the small Sinatra application who simple check domain ownersip using 3 different models:

	1. Check a TXT record or CNAME record to your domain's DNS settings
	2. Upload an HTML file
	3. Add a <meta> tag to your home page

this application created by [Alexandr Basan]().

General help how to verify domain ownership by Google:

    https://support.google.com/a/answer/60216?hl=en

Another helps:
	
	http://www.sinatrarb.com/intro.html
	https://www.digitalocean.com/community/tutorials/how-to-install-and-get-started-with-sinatra-on-your-system-or-vps  

Run Sinatra:


	$ cd your_app_folder
	# gem install sinatra
    $ rackup -p 4568
    localhost:4568