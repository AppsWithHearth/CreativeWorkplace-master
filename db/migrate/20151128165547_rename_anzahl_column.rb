class RenameAnzahlColumn < ActiveRecord::Migration
  def change
  	rename_column(:cart_items,:anzahl,:amount)
  end
end
