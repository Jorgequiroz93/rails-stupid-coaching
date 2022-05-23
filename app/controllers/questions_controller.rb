class QuestionsController < ApplicationController
    def ask
    end

    def answer
        if params[:question].downcase == "I am going to work"
            @answer = "Great! - Coach"
        elsif params[:question].end_with? "?"
            @answer = "Silly question, get dressed and go to work!. - Coach"
        else 
            @answer = "I don't care, get dressed and go to work! - Coach"
        end
    end
end
