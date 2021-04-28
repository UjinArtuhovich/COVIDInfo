//
//  ScreenInteractor.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/8/20.
//

import Foundation
enum URLstring {
    static let baseUrl =  "https://api.covid19api.com/summary"
}
class COVIDInfoBuilder {
    static func getViewModel() -> COVIDInfoViewModel {
        let urlDataModel = URLdataModel(URLString: URLstring.baseUrl)
        let dataManager = DataManager(URLdataModel: urlDataModel)
        let covidInfoViewModel = COVIDInfoViewModel(dataManager: dataManager)
        return covidInfoViewModel
        
    }
}
