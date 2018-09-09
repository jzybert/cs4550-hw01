server {
	listen 80;
	listen [::]:80;
	
	root /home/zybert/www/jonathanzybert.com;

	index index.html;

	server_name jonathanzybert.com www.jonathanzybert.com;

	location / {
		try_files $uri $uri/ =404;
	}
}
