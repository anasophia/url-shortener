class VisitsTable < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.belongs_to :shortened_url

      t.timestamps
    end
  end
end
