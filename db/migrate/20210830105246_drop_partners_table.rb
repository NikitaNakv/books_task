# frozen_string_literal: true

class DropPartnersTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :partners
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
