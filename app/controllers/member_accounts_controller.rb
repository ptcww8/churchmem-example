class MemberAccountsController < ApplicationController
  before_action :set_member_account, only: [:show, :edit, :update, :destroy]
	layout "portfolio"

  # GET /member_accounts
  # GET /member_accounts.json
  def index
    @member_accounts = MemberAccount.all
  end

  # GET /member_accounts/1
  # GET /member_accounts/1.json
  def show
  end

  # GET /member_accounts/new
  def new
    @member_account = MemberAccount.new
  end

  # GET /member_accounts/1/edit
  def edit
  end

  # POST /member_accounts
  # POST /member_accounts.json
  def create
    @member_account = MemberAccount.new(member_account_params)

    respond_to do |format|
      if @member_account.save
        format.html { redirect_to @member_account, notice: 'Member account was successfully created.' }
        format.json { render :show, status: :created, location: @member_account }
      else
        format.html { render :new }
        format.json { render json: @member_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_accounts/1
  # PATCH/PUT /member_accounts/1.json
  def update
    respond_to do |format|
      if @member_account.update(member_account_params)
        format.html { redirect_to @member_account, notice: 'Member account was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_account }
      else
        format.html { render :edit }
        format.json { render json: @member_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_accounts/1
  # DELETE /member_accounts/1.json
  def destroy
    @member_account.destroy
    respond_to do |format|
      format.html { redirect_to member_accounts_url, notice: 'Member account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_account
      @member_account = MemberAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_account_params
      params.require(:member_account).permit(:first_name, :last_name, :age, :date_of_birth, :gender, :address, :picture, :marital_status, :user_id)
    end
end
