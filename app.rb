require("pg")
require('sinatra')
require('sinatra/reloader')
require('./lib/project')
require('./lib/volunteer')
require('pry')
also_reload('lib/**/*.rb')

DB = PG.connect({:dbname => "volunteer_tracker"})

get('/') do
  redirect to('/projects')
end

get('/projects') do
  @projects = Project.all
  erb :projects
end

get('/projects/new') do
  erb :new_project
end

post('/projects') do
  name = params[:project_name]
  project = Project.new({:name => name, :id => nil})
  project.save
  redirect to('/projects')
end
