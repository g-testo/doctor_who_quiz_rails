class DoctorController < ApplicationController
  def image_questions

    @randNumber = rand(0..13)

    doctorResponse = HTTParty.get('http://localhost:3001/api/v1/doctors.json')
    @doctorArr = []
    doctorResponse.each do |doctor|
      @doctorArr.push({:name => doctor["name"], :actor_name => doctor["actor_name"], :species => doctor["species"], :episodes => doctor["episodes"], :species => doctor["companions"], :image_url => ("http://localhost:3001/doctors/" + doctor["image_url"]), :actor_image_url => ("http://localhost:3001/doctor_actors/" + doctor["actor_image_url"]) })
    end

  end
end
