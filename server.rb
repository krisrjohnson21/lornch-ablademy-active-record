require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require 'sinatra/flash'

require "pry" if development? || test?


require_relative 'config/application'

configure :development, :test do
  require 'pry'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

configure do
  set :views, 'app/views'
end

get '/' do
  redirect '/clinics'
end

get '/clinics' do
  @clinics = Clinic.all
  erb :'clinics/index'
end

get '/clinics/:id' do
  @clinic = Clinic.find(params["id"])
  @comments = @clinic.comments
  @students = @clinic.students
  erb :'clinics/show'
end

get '/students' do
  @students = Student.all
  erb :'students/index'
end

get '/students/:id' do
  @student = Student.find(params["id"])
  @clinics = @student.clinics
  erb :'students/show'
end
