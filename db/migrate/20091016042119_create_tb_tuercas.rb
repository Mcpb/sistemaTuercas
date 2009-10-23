class CreateTbTuercas < ActiveRecord::Migration
  def self.up
    create_table :tb_tuercas, :primary_key => :id do |t|
          t.column :nombre, :string, :limit => 40
          t.column :num_lados, :integer, :null => false, :default => 4
          t.column :dimension, :float, :null => false
          t.column :tolerancia, :float, :null => false
          t.column :estado, :string, :limit => 10, :default => 'Activo'
    end
  end

  def self.down
    drop_table :tb_tuercas
  end
end
