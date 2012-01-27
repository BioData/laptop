echo "Installing Ruby 1.8.7 Enterprise stable ..."
  rvm install ree

echo "Installing Ruby 1.9.2 stable and making it the default Ruby ..."
  rvm install 1.9.2

echo "Installing Bundler for managing Ruby libraries ..."
  gem install bundler --no-rdoc --no-ri

echo "Installing the Heroku gem to interact with the http://heroku.com API ..."
  gem install heroku --no-rdoc --no-ri

echo "Installing the Taps gem to push and pull SQL databases between development, staging, and production environments ..."
  gem install taps --no-rdoc --no-ri

echo "updating rubygems system"
  rvm use ree-1.8.7-2011.03
	gem update --system

echo "Creating and importing to 187-old gemset"
	wget https://raw.github.com/BioData/laptop/master/1.8.7-global.gems ~/
	rvm use ree@187-biokm --create
	rvm gemset import ~/1.8.7-global.gems

echo "Creating and importing to 192-old gemset"
  wget https://raw.github.com/BioData/laptop/master/1.9.2-global.gems ~/
  rvm use 1.9.2@192-general --create
  rvm use 1.9.2@192-general --default
  rvm gemset import ~/1.9.2-global.gems 