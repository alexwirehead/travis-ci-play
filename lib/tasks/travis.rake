namespace :travis do

  desc "Migrates the database"
  task :migrate do
    puts "migrating db . . ."
    `bundle exec db:migrate`
  end

  desc "Runs all tests"
  task :test do
    puts "Running tests . . ."
    `bundle exec rake test`
  end

end

Rake::Task['travis:test'].enhance ['travis:migrate']
