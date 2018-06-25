class AddColumnCodeToUrls < ActiveRecord::Migration[5.2]
  def change
    add_column :urls, :long_url, :string
  end
end
