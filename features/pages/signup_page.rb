class SignUpPage < BasePage

    def initialize
        @create_account_button = Element.new(:css, '#SubmitCreate')
        @enter_customer_first_name = Element.new(:css, '#customer_firstname')
        @enter_customer_last_name = Element.new(:css, '#customer_lastname')
        @enter_password = Element.new(:css, '#passwd')
        @enter_firstname = Element.new(:css, '#firstname')
        @enter_lastname = Element.new(:css, '#lastname')
        @enter_city = Element.new(:css, '#city')
        @enter_pastcode = Element.new(:css, '#postcode')
        @enter_phone_mobile = Element.new(:css, '#phone_mobile')
  
        @select_state = Element.new(:css, '#uniform-id_state')
        @select_state_options = Element.new(:css, '#id_state option')

        @enter_login = Element.new(:css, '#email')
        @login_button = Element.new(:css, '#SubmitLogin')

        @register_button = Element.new(:css, '#submitAccount')
    end

    def clickAccountButton
    @create_account_button.click
    end 
    
    def mandatoryName(name)
    @enter_customer_first_name.send_keys(name)
    end

    def mandatoryLastname(lastname)
    @enter_customer_last_name.send_keys(lastname)
    end

    def mandatoryFieldsInput
    random = (Random.rand(1000..99999)).to_s
    Element.new(:css, '#passwd').send_keys("something#{random}@gmail.com")
    @enter_firstname.send_keys("something#{random}@gmail.com")
    @enter_lastname.send_keys("something#{random}@gmail.com")
    @enter_city.send_keys("something#{random}@gmail.com")
    @enter_pastcode.send_keys("something#{random}@gmail.com")
    @enter_phone_mobile.send_keys("something#{random}@gmail.com")
    end


    def drop_down(text)
    @select_state.click
    Capybara.find(@select_state_options.css, text: /#{text}/i).click
    end

    def enter_login(login)
    @enter_login.send_keys(login)
    end

    def enter_password(password)
    @enter_password.send_keys(password)
    end

    def press_login 
    @login_button.click
    end

    def clickRegisterButton
    @register_button.click
    end
end