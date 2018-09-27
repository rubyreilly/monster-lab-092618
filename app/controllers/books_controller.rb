class BooksController<ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @authors = @book.authors
    @all_authors = Author.all
    @all_book_authors = BookAuthor.all
  end

end
