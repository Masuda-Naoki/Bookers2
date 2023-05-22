class UsersController < ApplicationController



    def edit
        @user = User.find(params[:id])
    end

  def index
    @users = User.all
    @user = current_user
    @books = Book.all
    @book = Book.new
  
  end

  def show
     @book = Book.new
     @user = User.find(params[:id])
     @users = User.all
    @user = current_user
    @books = Book.all
  end

def update
        @user = User.find(params[:id])
        if  @user.update(user_params)
        flash[:notice] = "You have updated user successfully."
　　　　if @user.save
        redirect_to user_path(current_user.id)
        else
        flash[:notice] = " errors prohibited this obj from being saved:"
            render :edit

        end
end
end

  
  private
   

    def book_params
        params.require(:book).permit(:title, :body)
    end

    def user_params
        params.require(:user).permit(:name,:profile_image,:introduction)
    end

    def  ensure_current_user
        @user = User.find(params[:id])
     if @user.id = current_user.id
        redirect_to user_path(current_user.id)

     end
    end




