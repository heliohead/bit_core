Run specs

```console
    touch spec/dummy/db/schema.rb
    bin/rake app:db:drop app:db:create app:db:migrate RAILS_ENV=test
    bin/rspec
```
