# frozen_string_literal: true

# Migrate the Movie model to the DB
class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.string :poster_url
      t.decimal :rating

      t.timestamps
    end
  end
end
