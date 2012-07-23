class MovementsController < ApplicationController
  # GET /movements
  # GET /movements.json
  def index
    @movements = Movement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movements }
    end
  end

  # GET /movements/1
  # GET /movements/1.json
  def show
    @movement = Movement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movement }
    end
  end

  # GET /movements/new
  # GET /movements/new.json
  def new
    @movement = Movement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movement }
    end
  end

  # GET /movements/1/edit
  def edit
    @movement = Movement.find(params[:id])
  end

  # POST /movements
  # POST /movements.json
  def create
    @movement = Movement.new(params[:movement])

    respond_to do |format|
      if @movement.save
        format.html { redirect_to @movement, notice: 'Movement was successfully created.' }
        format.json { render json: @movement, status: :created, location: @movement }
      else
        format.html { render action: "new" }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movements/1
  # PUT /movements/1.json
  def update
    @movement = Movement.find(params[:id])

    respond_to do |format|
      if @movement.update_attributes(params[:movement])
        format.html { redirect_to @movement, notice: 'Movement was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movements/1
  # DELETE /movements/1.json
  def destroy
    @movement = Movement.find(params[:id])
    @movement.destroy

    respond_to do |format|
      format.html { redirect_to movements_url }
      format.json { head :ok }
    end
  end

  # GET /purchases
  # GET /purchases.json
  def index_purchase
    # MovementType.first should refers to 'Purchases'
    @movements = MovementType.first.movements

    respond_to do |format|
      format.html # index_purchase.html.erb
      format.json { render json: @movements }
    end
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show_purchase
    @movement = Movement.find(params[:id])

    respond_to do |format|
      format.html # show_purchase.html.erb
      format.json { render json: @movement }
    end
  end

  # GET /purchases/new
  # GET /purchases/new.json
  def new_purchase
    @movement = Movement.new

    respond_to do |format|
      format.html # new_purchase.html.erb
    end
  end

  # GET /purchase/1/edit
  def edit_purchase
    @movement = Movement.find(params[:id])
  end

  # POST /purchases
  # POST /purchases.json
  def create_purchase
    @movement = Movement.new(params[:purchase])

    respond_to do |format|
      if @movement.save
        format.html { redirect_to purchase_path(@movement), notice: 'Purchase was successfully created.' }
        format.json { render json: @movement, status: :created, location: @movement }
      else
        format.html { render action: 'new_purchase' }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end


  # PUT /purchases/1
  # PUT /purchases/1.json
  def update_purchase
    @movement = Movement.find(params[:id])

    respond_to do |format|
      if @movement.update_attributes(params[:purchase])
        format.html { redirect_to purchase_path(@movement), notice: 'Purchase was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit_purchase" }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy_purchase
    @movement = Movement.find(params[:id])
    @movement.destroy

    respond_to do |format|
      format.html { redirect_to purchases_url }
      format.json { head :ok }
    end
  end

end
