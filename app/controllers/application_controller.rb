class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/books' do
    books = Book.all
    books.to_json
  end
  get '/authors' do
    author = Author.all
    author.to_json
  end
  get '/authors/:id' do
    author = Author.find(params[:id])
    author.to_json(include :author)
  end
  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json(include: :books)
  end
  post '/authors' do
    new_author = Author.create(
    name: params[:name]
    )
    new_author.to_json
  end
  post '/books' do
    new_book = Book.create(
      name: params[:name],
      genre: params[:genre],
      author_id: params[:author_id]
    )
    new_book.to_json
  end
  patch '/authors/:id' do
    author = Author.find(params[:id])
    author.update(
    name: params[:name]
    )
    author.to_json
  end
  
  patch '/books/:id' do
    book = Book.find(params[:id])
    book.update(
      name: params[:name],
      genre: params[:genre]
    )
    book.to_json
  end
  delete '/books/:id' do
    book = Book.find(params[:id])
    book.destroy
    book.to_json
  end

end
