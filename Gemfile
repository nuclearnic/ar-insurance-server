ruby '2.5.0'

source 'https://rubygems.org'

gem 'sinatra'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'pry'
