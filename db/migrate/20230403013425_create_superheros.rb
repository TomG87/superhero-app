class CreateSuperheros < ActiveRecord::Migration[7.0]
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :team
      t.string :company

      t.timestamps
    end
  end
end
