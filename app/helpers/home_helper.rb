module HomeHelper

  def determine_salutation(gender)
    if gender == "male"
	"Mr."
    elsif gender == "female"
	"Mrs."
    else
	"Trs."
    end
  end
end
