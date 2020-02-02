module ApiHelper
    def generate_token(user)
      service = AuthenticateUser.call(user.email, user.password)
      service.result
    end
end