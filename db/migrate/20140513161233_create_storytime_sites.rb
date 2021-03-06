class CreateStorytimeSites < ActiveRecord::Migration[4.2]
  def change
    create_table :storytime_sites do |t|
      t.string :title
      t.integer :post_slug_style, default: 0
      t.string :ga_tracking_id
      t.integer :root_page_content, default: 0
      t.references :root_post, index: true

      t.timestamps
    end
  end
end
