require_relative 'validator_by_integer'

class Choicest
  attr_reader :count, :validator, :inputs

  def initialize(count = 3, validator = ValidatorByInteger.new)
    @count = count
    @validator = validator
    @inputs = []

    count.times do
      input = STDIN.gets.chomp
      abort validator.error_message unless validator.validate(input)

      @inputs << input.to_i
    end
  end
end