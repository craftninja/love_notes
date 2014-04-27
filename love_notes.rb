require 'sinatra/base'

class LoveNotes < Sinatra::Application

  LoveNoteLibrary = Array.new

  get '/' do
    erb :index
  end

  post '/' do
    LoveNoteLibrary << params[:love_note]
    redirect '/'
  end

end