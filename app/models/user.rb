class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  before_create :set_auth_token

  private
    def set_auth_token
      return if auth_token.present?

      begin
        self.auth_token = SecureRandom.hex
      end while self.class.exists?(auth_token: self.auth_token)
  end
end
