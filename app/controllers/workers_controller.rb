class WorkersController < ApplicationController

  # GET /workers
  def index
    @workers = Worker.page(params[:page] ? params[:page].to_i: 1)

    render json: @workers
  end

  # GET /workers/1
  def show
    render json: @worker
  end


  # POST /workers
  def create
    @worker = Worker.new(worker_params)

    if @worker.save
      render json: @worker, status: :created, location: @worker
    else
      render json: @worker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workers/1
  def update
    if @worker.update(worker_params)
      render json: @worker
    else
      render json: @worker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workers/1
  def destroy
    @worker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worker
      @worker = Worker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def worker_params
      params.require(:worker).permit(:work_order_id, :name, :company_name, :email)
    end

    def pagination_meta(object){              
      current_page: object.current_page,        
      next_page: object.next_page,        
      prev_page: object.prev_page,        
      total_pages: object.total_pages,        
      total_count: object.total_count }         
    end
end
