class AddIntroduceToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :introduce, :text
  end
end
