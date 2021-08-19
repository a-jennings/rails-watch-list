# frozen_string_literal: true

# Migrate the List model to the DB
class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :name

      t.timestamps
    end
  end
end