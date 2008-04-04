module CardsHelper
  def card_size
    session[:card_size] || 1
  end
end
