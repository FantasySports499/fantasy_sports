class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to root_path, notice: "The person has been created!" and return
    end
    render 'new'
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update_attributes(person_params)
      redirect_to root_path, notice: "#{@person.inviter} #{@person.invited} has been updated!" and return
    end

    render 'edit'
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to root_path, notice: "#{@person.inviter} #{@person.invited} has been deleted!" and return
  end
  private
  def person_params
    params.require(:person).permit(:inviter, :erPicked, :invited, :edPicked)
  end
end
