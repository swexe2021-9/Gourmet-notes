class TopController < ApplicationController
    def main
       render 'login_form' 
    end
    
    def login
      user = User.find_by(email: params[:email])
      if user and BCrypt::Password.new(user.pass) == params[:pass]
          flash[:notice] = 'ログインに成功しました。'
          session[:login_uid] = user.id
          redirect_to root_path
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
