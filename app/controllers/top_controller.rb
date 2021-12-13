class TopController < ApplicationController
    def main
      if session[:login_uid]
        render 'main'
      else
        render 'login_form' 
      end
    end
    
    def menu
      render 'menu'
    end
    
    def login
      user = User.find_by(email: params[:email])
      if user and BCrypt::Password.new(user.pass) == params[:pass]
          flash[:notice] = 'ログインに成功しました。'
          session[:login_uid] = user.email
          redirect_to '/top/main'
      else
          flash[:notice] = 'ログインに失敗しました。'
          render 'login_form'
      end
    end
    
    def logout
      flash[:notice] = 'ログアウトに成功しました。'
      session.delete(:login_uid)
      redirect_to root_path
    end
end
