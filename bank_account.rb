
class BankAccount
	attr_accessor :balance
    @@minimum_opening_balance = 200
    #we use @@ because in this case, minimum_opening_balance is a class method

	def initialize(opening_balance, account_holder)
        if opening_balance < @@minimum_opening_balance
            raise ArgumentError
        end
	    @balance = opening_balance	
	end
    
    def deposit(amount)
        @balance += amount
    end
    
    def withdraw(amount)
        @balance -= amount
    end
    
    def transfer(amount, account)
        withdraw(amount)
        account.deposit(amount)
    end
    
    
        
end



