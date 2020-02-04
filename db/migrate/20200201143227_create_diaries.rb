class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.references :user, foreign_key: true
      t.string :title,dedault: "無題"
      t.string :text,dedault: "本文なし"
      t.string :image
      t.timestamps
    end
  end
end
