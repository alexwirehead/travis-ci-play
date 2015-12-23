namespace :travis do

  desc "Migrates the database"
  task :migrate do
    puts "migrating db . . ."
    `bundle exec db:migrate`
    puts "finished migrating db . . ."
  end

  desc "Runs all tests"
  task :test => [:migrate] do
    puts "Running tests . . ."
    `bundle exec rake test`
    puts "finished running tests"
  end

end
