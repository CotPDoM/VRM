class PeopleController < ApplicationController
  
  before_filter :authorize
  
  # GET /people
  # GET /people.xml
  def index
    session[:filter] ||= :first_name
    
    if params[:filter]
      if session[:filter] == params[:filter]
	session[:filter] = params[:filter] + " desc"
      else
	session[:filter] = params[:filter]
      end
    end
    @people = Person.order(session[:filter])
#     Rails.logger.info("PARAMS: #{params.inspect}")
#     Rails.logger.info("SESSION: #{session.inspect}")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people }
    end
  end
  
  def search
    unless params[:term] == nil 
      @people = Person.search(params[:term])
      if @people == []
	flash.now[:notice] = "No Search Results Found"
      end
    end
     respond_to do |format|
       format.html { render :action => :index}
#      format.xml  { render :xml => @events }
    end
  end

  # GET /people/1
  # GET /people/1.xml
  def show
    @person = Person.find(params[:id])
    
      flash[:notice] = "No Search Results Found"
    
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @person }
    end
  end

  # GET /people/new
  # GET /people/new.xml
  def new
    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /people
  # POST /people.xml
  def create
    @person = Person.new(params[:person])

    respond_to do |format|
      if @person.save
        format.html { redirect_to(@person, :notice => 'Person was successfully created.') }
        format.xml  { render :xml => @person, :status => :created, :location => @person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.xml
  def update
    @person = Person.find(params[:id])

    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to(@person, :notice => 'Person was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.xml
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    respond_to do |format|
      format.html { redirect_to(people_url) }
      format.xml  { head :ok }
    end
  end
  
  
end
