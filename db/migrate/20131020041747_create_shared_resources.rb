class CreateSharedResources < ActiveRecord::Migration
  def change
    create_table :shared_resources do |t|
      t.string :path
      t.boolean :directory
      t.boolean :read
      t.boolean :write
      t.references :shares, polymorphic: true
      t.timestamps
    end
  end
end
