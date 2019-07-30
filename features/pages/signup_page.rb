class SignUpPage < BasePage

    def initialize
        @create_account_button = Element.new(:css, '#SubmitCreate')
        @enter_customer_first_name = Element.new(:css, '#customer_firstname')
        @enter_customer_last_name = Element.new(:css, '#customer_lastname')
        @enter_password = Element.new(:css, '#passwd')
        @enter_firstname = Element.new(:css, '#firstname')
        @enter_lastname = Element.new(:css, '#lastname')
        @enter_city = Element.new(:css, '#city')
        @enter_address = Element.new(:css, '#address1')
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
    
    # def mandatoryName(name)
    # @enter_customer_first_name.send_keys(name)
    # end

    # def mandatoryLastname(lastname)
    # @enter_customer_last_name.send_keys(lastname)
    # end

    def mandatoryFieldsInput
    #random = (Random.rand(1000..99999)).to_s
    @enter_customer_first_name.send_keys("vards")
    @enter_customer_last_name.send_keys("uzvards")
    @enter_password.send_keys("12345678")
    @enter_firstname.send_keys("SERGEJS")
    @enter_lastname.send_keys("IVANOVS")
    @enter_city.send_keys("NEWYORK")
    @enter_address.send_keys("Brivibas iela 1")
    @enter_pastcode.send_keys("00000")
    @enter_phone_mobile.send_keys("2999999999")

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