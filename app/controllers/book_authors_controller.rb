class BookAuthorsController<ApplicationController

  def new
    @all_books = Book.all
    @all_authors = Author.all
    @book_author = BookAuthor.new
  end


  def create
    @book_author = BookAuthor.new
    @book_author_params = params.require(:book_author).permit(:book_id, :author_id)
    @book_author.book_id = @book_author_params[:book_id]
    @book_author.author_id= @book_author_params[:author_id]
    @book = Book.find(@book_author_params[:book_id])
    @book.authors<<Author.find(@book_author_params[:author_id])
    redirect_to @book
  end

  def destroy

    @book_author=BookAuthor.find(params[:id])
    @book =Book.find(@book_author[:book_id])
    @book_author.destroy

    redirect_to @book
  end

end
