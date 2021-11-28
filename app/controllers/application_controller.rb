class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/books' do
    books = Book.all
    books.to_json
  end
  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end
  post '/books' do
   new_book = Book.create(
      name: params[:name],
      genre: params[:genre],
      author: Author.create(author_name: params[:author_name])
    )
    new_book.to_json
  end
  delete '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end

end
