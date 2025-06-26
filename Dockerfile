# Dockerfile
FROM ruby:3.2.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set working directory
WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy project files
COPY . .

# Precompile assets (optional for production)
# RUN bundle exec rake assets:precompile

# Run server by default
CMD ["./entrypoint.sh"]
