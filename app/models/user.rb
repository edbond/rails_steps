class User < ActiveRecord::Base
  include Validatable

  attr_accessor :step

  validates_presence_of :login, :email, :groups => [:step1, :step2]
  validates_presence_of :city, :groups => :step2

  def valid?
    step == 'end' ? super :
      self.send("valid_for_step#{step}?".to_sym)
  end

  # def step
  #   read_attribute('step') || '1'
  # end

  def next_step
    step.to_i >= 2 ? 'end' : (step.to_i+1)
  end
end
