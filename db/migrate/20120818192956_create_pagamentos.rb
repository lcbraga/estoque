class CreatePagamentos < ActiveRecord::Migration
  def self.up
    create_table :pagamentos do |t|
      t.int :id
      t.string :tipo
      t.float :valor

      t.timestamps
    end
  end

  def self.down
    drop_table :pagamentos
  end
end
