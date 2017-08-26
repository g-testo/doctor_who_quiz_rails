class StaticController < ApplicationController
  def quiz
    response = HTTParty.get('http://localhost:3001/api/v1/episodes.json')
    @episodeArr = []
    response.each do |episode|
      @episodeArr.push({:number => episode["number"], :name => episode["name"]})
    end
  end
end
