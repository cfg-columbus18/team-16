class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :string
    add_column :users, :phone, :string
    add_column :users, :city, :string
    add_column :users, :jurisdiction, :string
    add_column :users, :country, :string
    add_column :users, :time_zone, :string
    add_column :users, :languages, :string
    add_column :users, :prefer_phone, :integer
    add_column :users, :prefer_email, :integer
    add_column :users, :prefer_skype, :integer
    add_column :users, :prefer_google_hangout, :integer
    add_column :users, :prefer_facebook, :integer
    add_column :users, :prefer_whatsapp, :integer
    add_column :users, :prefer_viber, :integer
    add_column :users, :refugees_sponsored, :integer
  end
end
