module ApiHelper
    def generate_token(user)
      service = AuthenticateUser.call(user.email, user.password, user.username)
      service.result
    end
end