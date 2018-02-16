class CreateBlogs < ActiveRecord::Migration[5.1]
#tableの設計図(テーブルの新規作成、カラムやレコードの編集が可能)
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :category
      t.timestamps
    end
  end
end
