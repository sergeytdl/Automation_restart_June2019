# class Pages
    
#     def page_first
#         @page_first ||= HomePage.new
#         @page_first
#     end
# end
  
class Pages
    def page_first
    @page_first ||= HomePage.new
    @page_first
    end
    
    def page_sign_up
    @page_sign_up ||= SignUpPage.new
    @page_sign_up
    end

    def page_account
    @page_account ||= AccountPage.new
    @page_account
    end

    def page_item
    @page_item ||= ItemPage.new
    @page_item
    end

  end
  