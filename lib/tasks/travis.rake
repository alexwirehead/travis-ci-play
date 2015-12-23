namespace :travis do

  desc "Runs all tests"
  task :test do
    puts "Running tests . . ."
    puts `bundle exec rake test`
    puts "finished running tests"
  end

end
