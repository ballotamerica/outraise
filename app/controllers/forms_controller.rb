class FormsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_form, only: [:destroy]

  def index
    @forms = current_user.forms.all
  end

  def new
    @form = Form.new
  end

  def create
     @user = current_user
     @form = @user.forms.build(form_params)
      if @form.save
          flash[:notice] = "Successfully update the form!"
          redirect_to form_path
      else
          render 'new'
      end
  end

  def show
    @form = Form.friendly.find_by(params[:id])
    @contribution = Contribution.new
    @contact = Contact.new
    @phone = Phone.new
    @address = Address.new
    @email = Email.new
  end

  def destroy    
    if @form.destroy && @form.present?
        flash[:notice] = "Form was removed!"
        redirect_to forms_path
    else
        flash[:notice] = "Form no longer exists! May have been deleted already."
        redirect_to forms_path
    end
  end

  private

  def set_form
      @form = Form.find_by(params[:slug])
  end

  def form_params
     params.require(:form).permit(:formName, :formTitle, :formBody, :amountOne, :amountTwo, :amountThree, :amountFour, :amountFive, :slug, :user_id, contributions_attributes: [:amount, :recurring, :token], contacts_attributes: [:firstName, :lastName, :suffix], addresses_attributes: [:one, :two, :city, :zipcode, :mailboxType], phones_attributes: [:numberType, :numberDigits], emails_attributes: [:addressType, :address])
  end
end
