class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)

    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end
end
