//
//  GetDataModel.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/6/20.
//

import Foundation
protocol COVIDInfoViewProtocol {
    var dataViewUpdated: (()->())? { get set }
    func getData(country: String)
    var covidViewData: COVIDInfoData? { get }
    init(dataManager: DataManager)
}

class COVIDInfoViewModel: COVIDInfoViewProtocol {
    var covidViewData: COVIDInfoData?
    var dataViewUpdated: (() -> ())?
    var dataManager: DataManager
    required init(dataManager: DataManager) {
        self.dataManager = dataManager
        covidViewData = nil
    }
    
    func getData(country: String) {
        dataManager.getCovidAPIData { data, error in
            guard let data = data else { return }
            let myCountry = data.countries.first { $0.country == country }
            if let myCountry = myCountry {
                self.covidViewData = COVIDInfoData(totalGlobalConfirmed: String(data.global.totalConfirmed),
                                                   newGlobalConfirmed: String(data.global.newConfirmed),
                                                   totalGlobalDeaths: String(data.global.totalDeaths),
                                                   newGlobalDeaths: String(data.global.newDeaths),
                                                   totalGlobalRecovered: String(data.global.totalRecovered),
                                                   newGlobalRecovered: String(data.global.newRecovered),
                                                   country: myCountry.country,
                                                   totalCountryConfirmed: String(myCountry.totalConfirmed),
                                                   newCountryConfirmed: String(myCountry.newConfirmed),
                                                   totalCountryDeaths: String(myCountry.totalDeaths),
                                                   newCountryDeaths: String(myCountry.newDeaths),
                                                   totalCountryRecovered: String(myCountry.totalRecovered),
                                                   newCountryRecovered: String(myCountry.newRecovered))
                self.dataViewUpdated?()
            } else {
                print("error")
            }
        }
    }
}
