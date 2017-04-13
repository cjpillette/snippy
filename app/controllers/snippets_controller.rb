class SnippetsController < ApplicationController

  def index
    @snippets = Snippet.all
  end

  def new
    @snippet = Snippet.new
  end

  def create
    snippet_params = params.require(:snippet).permit(:title, :description, :code)
    # hash of the collected params stored in a variable
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      redirect_to @snippet, notice: 'Your snippet was created'
    else
      render 'new'
    end

  end
end
