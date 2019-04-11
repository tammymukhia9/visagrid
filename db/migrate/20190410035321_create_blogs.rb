class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
  	drop_table(:blogs, if_exists: true)
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.text :article
      t.string :blog_img

      t.timestamps
    end
  end
end
