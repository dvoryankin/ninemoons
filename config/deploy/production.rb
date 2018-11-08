
server '188.166.1.16', port: 22, roles: [:web, :app, :db], primary: true

set :rails_env, 'production'
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }