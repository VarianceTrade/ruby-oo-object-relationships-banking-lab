class BankAccount

    @@all = []

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def name
        @name
    end

    def balance
        @balance
    end

    def balance=(balance)
        @balance = balance
    end

    def status
        @status
    end

    def status=(status)
        @status = status
    end

    def deposit(amount)
        @balance = @balance + amount
    end

    def display_balance
        return "Your balance is $#{balance}."
    end

    def valid?
        if @status == "open" && @balance > 0
            return true
        else
            false
        end
    end

    def close_account
        @status = "closed"
    end

end
