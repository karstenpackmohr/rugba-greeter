class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    person = Person.new
    person.name = params[:name]
    person.gender = params[:gender]
    person.save
    redirect_to people_path
  end
end
