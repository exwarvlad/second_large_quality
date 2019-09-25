require_relative 'classes/validator_by_integer'
require_relative 'classes/choicest'
require_relative 'algorithms/calculate_second_large_quality'

choicest = Choicest.new(3, ValidatorByInteger.new).inputs
puts calculate_second_large_quality(choicest)
