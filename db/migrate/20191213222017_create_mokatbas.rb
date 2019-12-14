class CreateMokatbas < ActiveRecord::Migration[6.0]
  def change
    create_table :mokatbas do |t|
      t.string :title
      t.text :description
      t.string :attachedFile

      t.timestamps
    end
  end
end
