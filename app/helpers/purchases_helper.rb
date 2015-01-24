module PurchasesHelper
  def show_message
    if flash[:message].present? && request.post?
     html = ''
     html<< "<span class='message'>"
     html<< flash[:message]
     html<< "</span>"
     raw html
    end
  end
end
