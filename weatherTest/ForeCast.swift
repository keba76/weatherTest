//
//  ForeCast.swift
//  weatherTest
//
//  Created by Ievgen Keba on 10/30/16.
//  Copyright © 2016 Harman Inc. All rights reserved.
//

import UIKit
import Alamofire

class ForeCast {
    
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: String!
    private var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            if let min = temp["min"] as? Double {
                self._lowTemp = String(round((min - 32) / 1.8))
            }
            if let max = temp["max"] as? Double {
                self._highTemp = String(round((max - 32) / 1.8))
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        if let date = weatherDict["dt"] as? Double {
            let unixConvetDate = Date(timeIntervalSince1970: date)
            let dateFormater = DateFormatter()
            dateFormater.dateStyle = .full
            dateFormater.timeStyle = .none
            dateFormater.dateFormat = "EEEE"
            self._date = unixConvetDate.dayOfTheWeek()
        }
    }
}
extension Date {
    func dayOfTheWeek() -> String {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE"
        return dateFormater.string(from: self)
    }
}

