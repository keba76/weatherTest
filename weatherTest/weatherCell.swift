//
//  weatherCell.swift
//  weatherTest
//
//  Created by Ievgen Keba on 10/31/16.
//  Copyright © 2016 Harman Inc. All rights reserved.
//

import UIKit

class weatherCell: UITableViewCell {

    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: ForeCast) {
        dayLbl.text = forecast.date
        weatherType.text = forecast.weatherType
        highTemp.text = String(forecast.highTemp)
        lowTemp.text = String(forecast.lowTemp)
    }
}

