#########################
## Official Ruby Image ##
#########################
FROM ruby:2.6.5

#####################################
## Update base system requirements ##
#####################################
RUN apt-get -qq update && apt-get -qq install -y build-essential

####################
## Install NodeJS ##
####################
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get -qq install -y nodejs

##################
## Install Yarn ##
##################
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get -qq update && apt-get -qq install -y yarn

##########################
## Fetch latest bundler ##
##########################
RUN gem install bundler

###########################
## Set working directory ##
###########################
ENV APP_HOME /babylonjs
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

##################################
## Install Gemfile Dependencies ##
##################################
ADD Gemfile* $APP_HOME/
RUN bundle install --quiet

###############################
## Install Yarn Dependencies ##
###############################
ADD package.json $APP_HOME/
ADD yarn.lock $APP_HOME/
RUN yarn install --check-files

#######################################
## Add app code to working directory ##
#######################################
ADD . $APP_HOME
