class CalculatorPage
  attr_accessor :btn_ok,
                :btn_divide,
                :btn_times,
                :btn_plus,
                :btn_minus,
                :btn_equal,
                :display

  def initialize
    @btn_ok = 'com.tricolorcat.calculator:id/btOK'
    @btn_divide = 'com.tricolorcat.calculator:id/divide'
    @btn_times = 'com.tricolorcat.calculator:id/times'
    @btn_plus = 'com.tricolorcat.calculator:id/plus'
    @btn_minus = 'com.tricolorcat.calculator:id/minus'
    @btn_equal = 'com.tricolorcat.calculator:id/equal'
    @display = 'com.tricolorcat.calculator:id/display'
  end

  def type_number(number)
    digits = number.to_s.split(//)

    if digits.first.eql?('-')
      find_by_id(btn_minus).click
      digits.delete_at(0)
    end

    digits.each do |digit|
      find_by_id("com.tricolorcat.calculator:id/#{digit.to_i.humanize}").click
    end
  end

  def get_display_text
    find_by_id(display).text
  end
end