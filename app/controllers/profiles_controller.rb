class ProfilesController < ApplicationController

  # GET /profiles/new
  # GET /profiles/new.json
  def new
    @profile = Profile.new

    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end
   
  def index
  
    if current_user.role.name == "producer"
      producer_location  = current_user.location_id
      @profiles = Profile.where(location_id: producer_location)
   
     


    else
      @profiles = Profile.all
    end
      authorize! :index, Profile
   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
    end
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @profile = current_user
    cohorts = Cohort.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/new
  # GET /profiles/new.json
  def new
    @profile = Profile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile }
    end
  end

  # GET /profiles/1/edit
  def edit
  
    if current_user.role.name =="admin"
      @profile = Profile.find(params[:id])
    else
      @profile = Profile.find(current_user.id)
    end

  end

  # POST /profiles
  # POST /profiles.json
  
  def create 
    @profile = Profile.new(params[:profile])
    @profile.name = params[:name]
    
    @profile.role = Role.find(1)

    respond_to do |format|
      if @profile.save && !current_user
        session[:profile_id] = @profile.id
      
        format.html { redirect_to root_path, notice: 'Profile was successfully created.' }
       
      elsif @profile.save
        format.html { redirect_to root_path, notice: 'Profile was successfully created.' }
       
      else
        format.html { render action: "new" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profiles/1
  # PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end
 


end
