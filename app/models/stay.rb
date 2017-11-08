class Stay < ActiveRecord::Base
  belongs_to :participant
  belongs_to :space
  
  delegate :display_amount, :display_total_amount, :display_detailed_total_amount, to: :decorator

  # Using decorators
  def decorator
    @decorator ||= StayDecorator.new(self)
  end
  
  def days
    ((end_at - start_at) / 1.day).to_i
  end
  
  def total_amount
    days * amount
  end
  
  def when_to_s
    start_at < participant.spaces.last.modality.end_at ? 'Estadía Pre' : 'Estadía Post'
  end
  
  def to_s
    return "#{I18n.l start_at, format: :date } al #{I18n.l end_at, format: :date} en #{place}" unless start_at.nil? || end_at.nil?
  end
  
end
