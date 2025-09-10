class CinemaDbsController < ApplicationController
  before_action :set_cinema_db, only: %i[ show edit update destroy ]

  # GET /cinema_dbs or /cinema_dbs.json
  def index
    @cinema_dbs = CinemaDb.all
  end

  # GET /cinema_dbs/1 or /cinema_dbs/1.json
  def show
  end

  # GET /cinema_dbs/new
  def new
    @cinema_db = CinemaDb.new
  end

  # GET /cinema_dbs/1/edit
  def edit
  end

  # POST /cinema_dbs or /cinema_dbs.json
  def create
    @cinema_db = CinemaDb.new(cinema_db_params)

    respond_to do |format|
      if @cinema_db.save
        format.html { redirect_to @cinema_db, notice: "Cinema db was successfully created." }
        format.json { render :show, status: :created, location: @cinema_db }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cinema_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinema_dbs/1 or /cinema_dbs/1.json
  def update
    respond_to do |format|
      if @cinema_db.update(cinema_db_params)
        format.html { redirect_to @cinema_db, notice: "Cinema db was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @cinema_db }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cinema_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinema_dbs/1 or /cinema_dbs/1.json
  def destroy
    @cinema_db.destroy!

    respond_to do |format|
      format.html { redirect_to cinema_dbs_path, notice: "Cinema db was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema_db
      @cinema_db = CinemaDb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cinema_db_params
      params.fetch(:cinema_db, {})
    end
end
