class PagesController < ApplicationController
  def home
    @page = Page.find(1)
  end
  def show
    @page = Page.find(params[:id])
  end
  def create
    @page=Page.new(page_params)
    if @page.save
    redirect_to @page
  else
    render 'new'
  end
  end
  def new
  end
  private
    def page_params
      params.require(:page).permit(:title,:content)
    end
end
