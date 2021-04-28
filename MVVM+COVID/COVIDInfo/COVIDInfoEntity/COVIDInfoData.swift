//
//  File.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/6/20.
//

import Foundation
struct COVIDInfoData {
    var totalGlobalConfirmed, newGlobalConfirmed: String
    var totalGlobalDeaths, newGlobalDeaths: String
    var totalGlobalRecovered, newGlobalRecovered: String
    
    var country: String?
    var totalCountryConfirmed, newCountryConfirmed: String
    var totalCountryDeaths, newCountryDeaths: String
    var totalCountryRecovered, newCountryRecovered: String

}
