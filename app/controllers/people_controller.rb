class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    Person.create(person_params)
    redirect_to people_path
  end

  # needed for mass-assignment
  # strong-parameters since rails 4
  def person_params
    params.require(:person).permit(:name, :gender)
  end
end
