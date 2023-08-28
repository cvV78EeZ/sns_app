class CreateTopicsControllers < ActiveRecord::Migration[7.0]
  def change
    create_table :topics_controllers do |t|
      t.string :title
      t.string :body 
      t.timestamps
    end
  end
end
