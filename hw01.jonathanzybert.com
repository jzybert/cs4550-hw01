server {
	listen 80;
	listen [::]:80;

	root /home/zybert/www/hw01.jonathanzybert.com;

	index index.html;

	server_name hw01.jonathanzybert.com;

	location / {
		try_files $uri $uri/ =404;
	}

	location /images {
		alias /home/zybert/www/hw01.jonathanzybert.com/images;
	}
}
