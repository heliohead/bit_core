Run specs

    bin/rake app:db:drop app:db:create app:db:migrate RAILS_ENV=test
    bin/rspec
