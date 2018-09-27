class AuthorsController<ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new
    # [:author_id][:name]
    strong_params = params.require(:author).permit(:name,:birth_year)
    @author.name = strong_params[:name]
    @author.birth_year = strong_params[:birth_year]
    @author.save
    redirect_to @author
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(params.require(:author).permit(:name,:birth_year))
    redirect_to @author
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to '/authors'
  end

end
