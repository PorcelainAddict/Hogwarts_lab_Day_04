require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student')
also_reload('./models/*')


#GETS

#return html that shows students in a nice list
get '/hogwarts' do
  #get students
  #pass to global variable
  @students = Student.all()
  #render it to index
  erb(:index)
end

get '/hogwarts/new' do
  erb(:new)
end



#POSTS

post '/hogwarts/' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end

post '/hogwarts/:id/delete' do
  student = params[:id]
  @student = Student.find_by_id(student)
  @student.delete
  redirect '/hogwarts'
end
