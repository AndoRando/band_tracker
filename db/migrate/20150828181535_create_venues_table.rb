class CreateVenuesTable < ActiveRecord::Migration
  def change
    create_table(:venues) do |t|
      t.column(:name, :string)

      t.timestamps()
    end
  end
end
