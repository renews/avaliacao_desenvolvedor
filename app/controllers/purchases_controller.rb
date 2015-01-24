require 'csv'
class PurchasesController < ApplicationController

  def new
    uploaded_file = params[:file]

    if uploaded_file.present?
      total = 0
      CSV.foreach(uploaded_file.tempfile, :headers => true) do |row|
        col = row.to_s.split(/\t/)
        total_buyer = dec_str(col[2]) * col[3].to_i
         Purchase.create!({buyer: col[0], description: col[1], price: col[2], quantity: col[3], address: col[4], supplier: col[5]})
        total += total_buyer
      end
      flash[:message] = "Valor total importado #{total}"
    end

  end

  def dec_str val
    clean_value = val.delete(',')
    clean_value.to_f
  end
end
