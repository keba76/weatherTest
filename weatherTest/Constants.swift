//
//  Constants.swift
//  weatherTest
//
//  Created by Ievgen Keba on 10/30/16.
//  Copyright © 2016 Harman Inc. All rights reserved.
//

import Foundation

let currentWeatherURL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude)&lon=\(Location.sharedInstance.longitude)&appid=66da88b47bbce73408d0c733dc11410f"
let foreURL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude)&lon=\(Location.sharedInstance.longitude)&cnt=10&mode=json&appid=66da88b47bbce73408d0c733dc11410f"

typealias DownloadComplete = () -> ()
