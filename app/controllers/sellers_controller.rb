class SellersController < UsersController
  def new
    @seller = Seller.new
  end
  def create
    @seller = Seller.new(params.require(:seller).permit(:name, :email, :password, :password_confirmation))
    @seller.type = 1
    @seller.save
    log_in @seller
  end
end