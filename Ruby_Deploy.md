AWS deployment
-set up the AWS instance - ubuntu 14.04 storage, key pair value
-ruby rvm, rails, passenger - app server
-nginx -web server
-nodejs
-postgresql
-github


RUBY AND RVM...............................................................................
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm requirements
rvm rubygems current
rvm rubygems current --force
gem install rails -v 4.2 --no-ri --no-rdoc
gem install passenger

rvmsudo /usr/bin/apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

y

rvm install 2.3.3
rvm use 2.3.3 --default

NGINX...............................................................................
rvmsudo passenger-install-nginx-module

ruby and node

sudo apt-get install libcurl4-openssl-dev

rvmsudo passenger-install-nginx-module

sudo dd if=/dev/zero of=/swap bs=1M count=1024
sudo mkswap /swap
sudo swapon /swap

rvmsudo passenger-install-nginx-module

1
/etc/nginx

PostgreSQL...............................................................................

sudo apt-get install postgresql postgresql-contrib libpq-dev

sudo su postgres -c psql

CREATE ROLE ubuntu SUPERUSER LOGIN;
\q

****CHANGE database.yml file user name to ubuntu

NODEJS/Git.............
sudo apt-get install nodejs
sudo apt-get install git
cd /var
sudo mkdir www
cd www

sudo git clone https://github.com/**************<yourusername>/<*********************your_rails_project>

sudo chown -R ubuntu ******************your_rails_project

bundle install

sudo touch log/development.log
sudo chmod 0666 /var/www/***********************<your_rails_project>/log/development.log

rake db:create:all
rake db:migrate

STARTING AND CONFIG NGINX......................................

sudo wget https://raw.github.com/JasonGiedymin/nginx-init-ubuntu/master/nginx -O /etc/init.d/nginx


sudo chmod +x /etc/init.d/nginx
cd /etc/init.d
sudo vi nginx

To insert in vim press "i" key

Change line 21 to "/etc/nginx/conf/nginx.conf"
Change line 22 to "/etc/nginx/logs/nginx.pid"

Change line 87 to "NGINXPATH=${NGINXPATH:-/etc/nginx}"
Press ESC, and then :wq

sudo service nginx start
cd /etc/nginx

sudo mkdir sites-available
sudo mkdir sites-enabled

cd conf

sudo vi nginx.conf"

after deny all;
....
#}
}
Below the server section type "include /etc/nginx/sites-enabled/*;" . I will be writing it after line 82. Then escape and :wq out of the file.

cd /etc/nginx/sites-available

sudo touch rails.conf

sudo vi rails.conf

server {
      listen 80;
      server_name <your-EC2-public-ip> <your.domainname.com>;
      passenger_enabled on;
      passenger_app_env development;
      root /var/www/<your_app_name>/public;
      }


sudo ln -s /etc/nginx/sites-available/rails.conf /etc/nginx/sites-enabled/rails.conf

sudo service nginx restart

      
