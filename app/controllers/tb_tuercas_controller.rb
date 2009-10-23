class TbTuercasController < ApplicationController
  # GET /tb_tuercas
  # GET /tb_tuercas.xml
  def index
    @tb_tuercas = TbTuerca.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tb_tuercas }
    end
  end

  # GET /tb_tuercas/1
  # GET /tb_tuercas/1.xml
  def show
    @tb_tuerca = TbTuerca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tb_tuerca }
    end
  end

  # GET /tb_tuercas/new
  # GET /tb_tuercas/new.xml
  def new
    @tb_tuerca = TbTuerca.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tb_tuerca }
    end
  end

  # GET /tb_tuercas/1/edit
  def edit
    @tb_tuerca = TbTuerca.find(params[:id])
  end

  # POST /tb_tuercas
  # POST /tb_tuercas.xml
  def create
    @tb_tuerca = TbTuerca.new(params[:tb_tuerca])

    respond_to do |format|
      if @tb_tuerca.save
        flash[:notice] = t('TbTuerca_was_successfully_created')
        format.html { redirect_to(@tb_tuerca) }
        format.xml  { render :xml => @tb_tuerca, :status => :created, :location => @tb_tuerca }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tb_tuerca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tb_tuercas/1
  # PUT /tb_tuercas/1.xml
  def update
    @tb_tuerca = TbTuerca.find(params[:id])

    respond_to do |format|
      if @tb_tuerca.update_attributes(params[:tb_tuerca])
        flash[:notice] = t('TbTuerca_was_successfully_updated')
        format.html { redirect_to(@tb_tuerca) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tb_tuerca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tb_tuercas/1
  # DELETE /tb_tuercas/1.xml
  def destroy
    @tb_tuerca = TbTuerca.find(params[:id])
    @tb_tuerca.destroy

    respond_to do |format|
      format.html { redirect_to(tb_tuercas_url) }
      format.xml  { head :ok }
    end
  end
end
