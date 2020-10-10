class CreateDogOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :dog_owners do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
