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
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
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
    func downloadWeatherDetails (completed: DownloadComplete) {
        
    }
}
