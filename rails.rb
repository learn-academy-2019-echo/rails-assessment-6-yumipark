# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

# in rspec

context "hello_world" do
    it "should respond in English by default" 
        get :hello_world
        #byebug
        expect(response).to include("Hello, World")
    end
    
    it "should respond in Spanish (es)"
    it "should respond in German (de)"
    it "should respond in Russian (ru)"
    it "should respond in Japanese (ja)"
end

# in controller

class StaticsController < ApplicationController
    def hello_world
        if params[:language] == "es"
            render html: "Hola Munda"
        else 
            redner html: "Hello World"
        end
    end

    def grade 
        score = params[:score].to_i
        if score > 100 || score = 0
            render json; {error: "invalid score"}, status: 422
        elsif score >= 90
            grade = "A"
        else
            grade = "C"
        end
        render json: {grade: grade}
    end
end

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

#in rspec

context "grade" do
    it "should respond with A" do
        get :grade, params: {score: 90}
        result = JSON.parse(response.body)
        expect(result["grade"]).to eq("A")
    end
    it "should respond with C" do
        get :grade, params: {score: 75}
        result = JSON.parse(response.body)
        expect(result["grade"]).to eq("C")
    end
    it "should return 422 (unprocessable) for less than 0" do
        get :grade, params: {score: -1}
        expect(response.status).to eq(422)
    end

end 

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.

# see above 

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer 
    if params[:number] > 1
        render html: "#{params[:number]} #{params[:noun]}s}"
    else 
        render html: "1 #{params[:noun]}"
    end
    
# alt (incomplete)
    irregulars = {"goose" => "geese"}

    if params[:number].to_i  == 1
# in controller 

context "pluralizer" do
    it "should pluralize 2 of a thing" do
        get :pluralizer, params: {number: 2, noun: 'cat'}
        expect(reponse.body).to eq("2 cats")
    end
    it "should handle 1 irregular noun 'goose/geese'" do
        expect response(response.body).to eq(" geese")
        
    end

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
