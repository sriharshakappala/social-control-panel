class CreateTwitterAccounts < ActiveRecord::Migration
  def change
    create_table :twitter_accounts do |t|
      t.integer :user_id
      t.string :consumer_key
      t.string :consumer_secret
      t.string :access_token
      t.string :access_token_secret

      t.timestamps
    end
  end
end
