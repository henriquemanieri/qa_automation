class LoginPage < SitePrism::Page

  set_url "http://provaqa.marketpay.com.br:9081/desafioqa/login"

  element :usernameField, "[name='username']"
  element :passwordField, "[name='password']"
  element :loginButton,  "[type='submit']"


  def username_fill(user)
    usernameField.click
    usernameField.set(user)
  end

  def password_fill(password)
    passwordField.set(password)
  end

  def login_enter
    loginButton.click
  end


end
