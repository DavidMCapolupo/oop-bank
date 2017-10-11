
class BankAccount
	attr_accessor :balance

	def initialize(opening_balance, account_holder)
	    @balance = opening_balance	
	end
    
    def deposit(amount)
        @balance += amount
    end
    
end



