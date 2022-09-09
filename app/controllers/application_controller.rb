class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/expenses" do
    expenses = Expense.all 
    expenses.to_json 
  end

  get "/expenses/:id" do
    expenses = Expense.find(params[:id])
    expenses.to_json 
  end

  post "/expenses" do 
      expense = Expense.create(
        name: params[:name],
        cost: params[:cost] 
      )
      expense.to_json
  end

  put "/expense/:id" do
      expense = Expense.find(params[:id])
      expense.update(name: params[:name])
      expense.update(cost: params[:cost])
      expense.to_json
  end

  delete "/expenses/:id" do
        expense = Expense.find(params[:id])
        expense.destroy
        expense.to_json
  end

  get "/categories/:id" do
    categories = Category.find(params[:id])
    categories.to_json 
  end
  
  post "/categories" do 
    category = Category.create(
      name: params[:name], 
    )
    category.to_json
  end

  get "/categories" do
    categories = Category.all 
    categories.to_json 
  end
end
