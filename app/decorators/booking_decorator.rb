class BookingDecorator < Draper::Decorator
  decorates :booking
  include Draper::LazyHelpers
  
  def display_payments_amount
    number_to_currency object.payments_amount, unit: 'USD', precision: 2, delimiter: '.'
  end
  
  def display_amount
    number_to_currency object.amount, unit: 'USD', precision: 2, delimiter: '.'
  end
  
  def display_total_amount
    number_to_currency object.total_amount, unit: 'USD', precision: 2, delimiter: '.'
  end
  
  def display_detailed_total_amount
    "#{object.days} noches * #{object.display_amount} = #{object.display_total_amount}"
  end

  def display_due
    number_to_currency object.due, unit: 'USD', precision: 2, delimiter: '.'
  end
end
