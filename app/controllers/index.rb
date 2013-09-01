get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/notes' do

erb :notes
end

post '/notes' do

  Note.create(params)

  @notes = Note.all

  erb :notes


end

get '/edit/:id'do

p params[:id]

@note =Note.find(params[:id])
erb :edit

end

post '/edit' do 

  Note.update(params[:id], title: "#{params[:title]}", description: "#{params[:description]}")


erb :notes

end

get '/delete/:id' do
@note =Note.find(params[:id])
  erb :delete

end

post '/delete' do 

Note.find(params[:id]).destroy

  p params 

  erb :notes

end


