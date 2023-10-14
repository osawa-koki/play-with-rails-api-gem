FROM ruby:3.2.2
WORKDIR /app
EXPOSE 8000
ENV RAILS_ENV production
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
RUN bundle exec rails db:create db:migrate db:seed
CMD ["bundle", "exec", "rails", "server", "--binding", "0.0.0.0", "--port", "8000"]
