class DesignsController < ApplicationController
  before_action :set_design, only: [:show, :edit, :update, :destroy]

  # GET /designs
  # GET /designs.json
  def index
    @designs = Design.all
  end

  # GET /designs/1
  # GET /designs/1.json
  def show
  end

  # GET /designs/new
  def new
    if session[:user_id] == nil || @current_user.role != 'admin'
      flash[:notice] = "Sorry, members can't create new designs !"
      redirect_to designs_url
    else
      @design = Design.new
      @brands = Brand.all
    end
  end

  # GET /designs/1/edit
  def edit
    @brands = Brand.all
    if session[:user_id] == nil || @current_user.role != 'admin'
      flash[:notice] = "Sorry but members can't edit designs !"
      redirect_to designs_url
    else
    end
  end

  # POST /designs
  # POST /designs.json
  def create
    if session[:user_id] == nil || @current_user.role != 'admin'
      flash[:notice] = "You shouldn't be here ;) !"
      redirect_to designs_url
    else
      @design = Design.new(design_params)
      @brands = Brand.all

      respond_to do |format|
        if @design.save
          format.html { redirect_to @design, notice: 'Design was successfully created.'}
        else
          format.html { render :new }
        end
      end
    end
  end

  # PATCH/PUT /designs/1
  # PATCH/PUT /designs/1.json
  def update
    respond_to do |format|
      if @design.update(design_params)
        format.html { redirect_to @design, notice: 'Design was successfully updated.'}
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /designs/1
  # DELETE /designs/1.json
  def destroy
    if session[:user_id] == nil || @current_user.role != 'admin'
      flash[:notice] = "Nope, sorry ;) !"
      redirect_to designs_url
    else
      @design.destroy
      respond_to do |format|
        format.html { redirect_to designs_url, notice: 'Design was successfully destroyed.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design
      @design = Design.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def design_params
      params.require(:design).permit(:name, :brand_id, :core_number, :accent_number)
    end

end
