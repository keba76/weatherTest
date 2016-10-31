//
//  CurrentWeather.swift
//  weatherTest
//
//  Created by Ievgen Keba on 10/30/16.
//  Copyright © 2016 Harman Inc. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    
    private var _cityName: String!
    private var _date: String!
    private var _weatherType: String!
    private var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    var currentTemp: Double{
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .long
        dateFormater.timeStyle = .none
        let currentDay = dateFormater.string(from: Date())
        self._date = "Today, \(currentDay)"
        return _date
    }
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        let currentWeatheURL = URL(string: currentWeatherURL)!
        Alamofire.request(currentWeatheURL).responseJSON { response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name  = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                if let weather = dict["weather"] as? [[String : AnyObject]] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                }
                if let temp = dict["main"] as? [String : AnyObject] {
                    if let main = temp["temp"] as? Double {
                        self._currentTemp = round((main - 32) / 1.8)
                        print(self.currentTemp)
                    }
                    
                }
            }
            completed()
        }
    }
}
