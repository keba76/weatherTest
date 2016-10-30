//
//  Constants.swift
//  weatherTest
//
//  Created by Ievgen Keba on 10/30/16.
//  Copyright © 2016 Harman Inc. All rights reserved.
//

import Foundation

let baseURL = "http://api.openweathermap.org/data/2.5/weather?"
let latitude = "lat="
let longitude = "&lon="
let appID = "&appid="
let key = "66da88b47bbce73408d0c733dc11410f"

let currentWeatherURL = "\(baseURL)\(latitude)50.5\(longitude)30.5\(appID)\(key)"
typealias DownloadComplete = () -> ()
