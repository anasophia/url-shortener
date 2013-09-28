class CreateUrlsAndShortenedUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :address

      t.timestamps
    end

    create_table :shortened_urls do |t|
      t.string :address
      t.belongs_to :url

      t.timestamps
    end
  end
end
