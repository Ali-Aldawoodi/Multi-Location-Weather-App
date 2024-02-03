class HomeController < ApplicationController
  
    
    require 'uri'
    require 'net/http'
    require 'json'

    def fetch_city(name)
        uri = URI("https://geocoding-api.open-meteo.com/v1/search?#{name}=Berlin&count=1&language=en&format=json")  
        res = Net::HTTP.get_response(uri)
        puts res.body if res.is_a?(Net::HTTPSuccess)
    end
    
    def fetch_weather(latitude, longitude,current_temp,high_temp,low_temp )
      uri = URI("https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m&daily=temperature_2m_max,temperature_2m_min&temperature_unit=fahrenheit&wind_speed_unit=mph&precipitation_unit=inch&timezone=America%2FDenver")
      res = Net::HTTP.get_response(uri)
      puts res.body if res.is_a?(Net::HTTPSuccess)
    end


end
