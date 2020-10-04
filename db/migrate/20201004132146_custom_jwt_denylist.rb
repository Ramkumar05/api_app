class CustomJwtDenylist < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_jwt_denylist do |t|
      t.string :jti, null: false
      t.datetime :exp, null: false
      t.bigint :user_id
    end
  end
end
