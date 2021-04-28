//
//  JSONparseModel.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/6/20.
//

import Foundation
class DataManager {
    var URLdataModel: URLdataModel
    init(URLdataModel: URLdataModel) {
        self.URLdataModel = URLdataModel
    }
    func getCovidAPIData(completion: @escaping(COVIDAPIData?, Error?)->()) {
        URLdataModel.fetchURLdata { data, error in
            let decoder = JSONDecoder()
            if let error = error {
                completion(nil, error)
            }
            do {
                guard let data = data else { return }
                let CAData = try decoder.decode(COVIDAPIData.self, from: data)
                completion(CAData, nil)
            }
            catch let error as NSError {
                print(error)
            }
        }
    }
}
