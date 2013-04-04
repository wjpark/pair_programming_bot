require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @question = "DO YOU HAVE A TEST FOR THAT?"
  @yes = "YES"
  @no = "NO"

  erb :index
end

get '/pass' do
	@question = "DOES THE TEST PASS?"
	@yes = "YES"
	@no = "NO"

	erb :pass
end

get '/refactor' do
	@question = "NEED TO REFACTOR?"
	@yes = "YES"
	@no = "NO"

	erb :refactor
end

get '/do_refactor' do
	@question = "NEED TO REFACTOR?"
	@done = "DONE"

	erb :do_refactor
end

get '/write_test' do
	@question = "WRITE A TEST."
	@done = "DONE"

	erb :write_test
end

get '/write_code' do
	@question = "WRITE JUST ENOUGH CODE FOR THE TEST TO PASS."
	@done = "DONE"

	erb :write_code
end

get '/new_feature' do
	@question = "SELECT A NEW FEATURE TO IMPLEMENT."
	@continue = "CONTINUE"

	erb :new_feature
end
