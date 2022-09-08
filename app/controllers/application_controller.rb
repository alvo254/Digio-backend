class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  get '/' do 
    puts "Welcome to our server"
  end

  get '/student' do
    students = Student.all
      students.to_json

    end



    #   post '/reviewss' do
    #     review = Review.create(
    #       body: params[:body],
    #       restaurant_id: params[:restaurant_id],
    #       user_id: params[:user_id]
    #     )
    #     review.to_json
    #   end

    #   get '/reviewss' do
    #     reviewss = Review.all
    #     reviewss.to_json

    #   end

    #   get '/users' do
    #     users = User.all
    #     users.to_json
    #   end

    #   # resutrants routes

    #   get '/restaurants' do 
    #     restaurant = Restaurant.all
    #     restaurant.to_json
    #   end

      post '/student' do
        student = Student.create(
          name: params[:name],
          grades: params[:grades],
          email: params[:email],

        )
        student.to_json
    end
    
    delete '/student/:id' do 
      student = Student.find(params[:id])
      student.destroy
      student.to_json
    end

    # patch '/restaurants/:id' do 
    #   restaurant = Restaurant.find(params[:id])
    #    restaurant.update(
    #     name: params[:name],
    #     location: params[:location]
    #   )
    #   restaurant.to_json
    # end
  

end