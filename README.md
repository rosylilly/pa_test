# Minitest::PowerAssert が壊れてて辛い

`git pull` して

```shell
$ bundle install
$ bin/rake db:create db:migrate RAILS_ENV=test
$ bin/rake test
/usr/local/var/rbenv/versions/2.1.5/lib/ruby/gems/2.1.0/gems/spring-1.2.0/lib/spring/application.rb:156:in `fork': unexpected break
```

で再現。

## 作業内容

- `rails new pa_test`
- `minitest-power_assert` を Gemfile に追加
- `bin/rails g model Tea name:string`
- `validates :name, presence: true` を `app/model/tea.rb` に追加
- `test/model/tea_test.rb` の中身を書いた
