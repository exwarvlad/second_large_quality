class ValidatorByInteger
  def validate(input)
    true ? input =~ /^[-+]?\d+$/ : false
  end

  def error_message(message = nil)
    message ||= 'Choice must be Integer'
  end
end