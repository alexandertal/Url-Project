class AddShortUrlToUrls < ActiveRecord::Migration[5.2]
  def change
    add_column :urls, :short_url, :string
  end
end
