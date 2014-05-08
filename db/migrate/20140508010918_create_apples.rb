class CreateApples < ActiveRecord::Migration
  def change
    create_table :apples do |t|
      t.string :type_of_apple
      t.string :apple_quality
    end
  end
end