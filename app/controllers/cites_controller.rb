class CitesController < ApplicationController
  # GET /cites
  # GET /cites.xml
  def index
    @cites = Cite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cites }
    end
  end

  # GET /cites/1
  # GET /cites/1.xml
  def show
    @cite = Cite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cite }
    end
  end

  # GET /cites/new
  # GET /cites/new.xml
  def new
    @cite = Cite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cite }
    end
  end

  # GET /cites/1/edit
  def edit
    @cite = Cite.find(params[:id])
  end

  # POST /cites
  # POST /cites.xml
  def create
    @cite = Cite.new(params[:cite])

    respond_to do |format|
      if @cite.save
        format.html { redirect_to(@cite, :notice => 'Cite was successfully created.') }
        format.xml  { render :xml => @cite, :status => :created, :location => @cite }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cites/1
  # PUT /cites/1.xml
  def update
    @cite = Cite.find(params[:id])

    respond_to do |format|
      if @cite.update_attributes(params[:cite])
        format.html { redirect_to(@cite, :notice => 'Cite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cites/1
  # DELETE /cites/1.xml
  def destroy
    @cite = Cite.find(params[:id])
    @cite.destroy

    respond_to do |format|
      format.html { redirect_to(cites_url) }
      format.xml  { head :ok }
    end
  end
end
