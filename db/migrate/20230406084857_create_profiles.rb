class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|

      t.references :user,               null: false, foreign_key: true
      t.string     :name,               null: false
      t.string     :nickname,           null: false
      t.string     :age,                null: false
      t.string     :breed,              null: false
      t.string     :weight,             null: false
      t.date       :birth_day,          null: false
      t.string     :birth_place,        null: false
      t.string     :personality,        null: false
      t.string     :charm_point,        null: false
      t.string     :encounter,          null: false
      t.timestamps
    end
  end
end
