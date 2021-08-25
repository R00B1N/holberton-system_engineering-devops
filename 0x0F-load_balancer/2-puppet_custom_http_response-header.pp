# install, configure and create a custom HTTP header on nginx
package {'nginx':
ensure => present,
}

service {'nginx':
ensure  => running,
}

exec {'hostname=$(cat /etc/hostname); sudo sed -i "0,/http {/{s/http {/http {\n\tadd_header X-Served-By \"$hostname\"/}" /etc/nginx/nginx.conf; sudo service nginx restart':
provider => 'shell',
}
