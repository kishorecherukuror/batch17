class TollywoodsController < ApplicationController
  before_action :set_tollywood, only: [:show, :edit, :update, :destroy]

  # GET /tollywoods
  # GET /tollywoods.json
  def index
    @tollywoods = Tollywood.all
  end

  # GET /tollywoods/1
  # GET /tollywoods/1.json
  def show
  end

  # GET /tollywoods/new
  def new
    @tollywood = Tollywood.new
  end

  # GET /tollywoods/1/edit
  def edit
  end

  # POST /tollywoods
  # POST /tollywoods.json
  def create
    @tollywood = Tollywood.new(tollywood_params)

    respond_to do |format|
      if @tollywood.save
        format.html { redirect_to @tollywood, notice: 'Tollywood was successfully created.' }
        format.json { render :show, status: :created, location: @tollywood }
      else
        format.html { render :new }
        format.json { render json: @tollywood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tollywoods/1
  # PATCH/PUT /tollywoods/1.json
  def update
    respond_to do |format|
      if @tollywood.update(tollywood_params)
        format.html { redirect_to @tollywood, notice: 'Tollywood was successfully updated.' }
        format.json { render :show, status: :ok, location: @tollywood }
      else
        format.html { render :edit }
        format.json { render json: @tollywood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tollywoods/1
  # DELETE /tollywoods/1.json
  def destroy
    @tollywood.destroy
    respond_to do |format|
      format.html { redirect_to tollywoods_url, notice: 'Tollywood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tollywood
      @tollywood = Tollywood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tollywood_params
      params.require(:tollywood).permit(:name, :age, :role, :star, :political)
    end
end
