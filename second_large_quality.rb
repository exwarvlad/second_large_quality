require_relative 'classes/validator_by_integer'
require_relative 'classes/choicest'

puts Choicest.new(3, ValidatorByInteger.new).inputs.sum / 3
