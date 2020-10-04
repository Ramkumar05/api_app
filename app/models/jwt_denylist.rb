class JwtDenylist < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Denylist
  
  self.table_name = 'custom_jwt_denylist'

  # def self.jwt_revoked?(payload, user)
  #   $redis.exists?("user_denylist:#{user.id}:#{payload['jti']}")
  # end

  # def self.revoke_jwt(payload, user)
  #   expiration = payload['exp'] - payload['iat']
  #   $redis.setex("user_denylist:#{user.id}:#{payload['jti']}", expiration, payload['jti'])
  # end
end