module SessionsHelper
    def auth
        request.env['omniauth.auth']
      end
end
