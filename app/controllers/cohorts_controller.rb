class CohortsController < ApplicationController
  # GET /cohorts
  # GET /cohorts.json
  
  def index
    @cohorts = Cohort.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cohorts }
    end
  end

  # GET /cohorts/1
  # GET /cohorts/1.json
  def show
    @cohort = Cohort.find(params[:id])
    @tutorials = @cohort.tutorials
    @profile = @cohort.profiles.where(role_id: 3)
    @students = @cohort.profiles.where(role_id: 1)
    @tas = @cohort.profiles.where(role_id: 4)
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cohort }
    end
  end

  # GET /cohorts/new
  # GET /cohorts/new.json
  def new
    @cohort = Cohort.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cohort }
    end
  end

  # GET /cohorts/1/edit
  def edit

    @cohort = Cohort.find(params[:id])
  end

  # POST /cohorts
  # POST /cohorts.json
  def create
    @cohort = Cohort.new(params[:cohort])
    course = Course.find(params[:cohort][:course_id])
    
  
  
    course.lessons.all.each do |lesson|
      t1 = Tutorial.create(name: lesson.name, status_id: lesson.status_id)
      @cohort.tutorials << t1
    end


    respond_to do |format|
      if @cohort.save
        format.html { redirect_to @cohort, notice: 'Cohort was successfully created.' }
        format.json { render json: @cohort, status: :created, location: @cohort }
      else
        format.html { render action: "new" }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end





  end

  # PUT /cohorts/1
  # PUT /cohorts/1.json
  def update
    @cohort = Cohort.find(params[:id])
   
    respond_to do |format|
      if @cohort.update_attributes(params[:cohort])
        format.html { redirect_to @cohort, notice: 'Cohort was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohorts/1
  # DELETE /cohorts/1.json
  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy

    respond_to do |format|
      format.html { redirect_to cohorts_url }
      format.json { head :no_content }
    end
  end

def enroll

    @cohort = Cohort.find(params[:id])
  
    
    if @cohort.profiles.include? current_user
      redirect_to cohort_path, notice: 'You are already signed on to this course'
    else
      @cohort.profiles << current_user
       @cohort.save
      redirect_to cohort_path, notice: 'You have successfully signed on to this course'
    end
  end
  # @cohort = Cohort.find(params[:id])
 
  # @cohort.profiles << current_user
  # @cohort.save
  # redirect_to cohorts_url
end




