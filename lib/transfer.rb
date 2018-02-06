class Transfer
  attr_accessor :status, :sender, :receiver, :amount # add the others here?
  def initialize(sender,receiver,amount)
    @status= "pending"
    @sender= sender
    @receiver = receiver
    @amount = amount
  end
  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    else
      return false
    end
  end
  def execute_transaction
    if @status == "pending"
      @sender.balance -= @amount; 
      @receiver.balance += @amount
      @status= "complete"
    else 
      @status= "rejected"
    
  end

  # your code here
end
