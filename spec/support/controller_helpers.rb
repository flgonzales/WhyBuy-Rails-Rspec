module ControllerHelpers
  def sign_in(user = double('user'))
    if user.nil?
      allow(request.env['warden']).to receive(:authenticate!)
      allow(controller).to receive(:current_user).and_return(user)
    else
      allow(request.env['warden']).to receive(:authenticate!).and_return(user)
      allow(controller).to receive(:current_user).and_return(user)
    end
  end
end
