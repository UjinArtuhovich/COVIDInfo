//
//  URLdata.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 12/6/20.
//

import Foundation
class URLdataModel {
    var URLString: String
    init(URLString: String) {
        self.URLString = URLString
    }
    func fetchURLdata(completion: @escaping(Data?, Error?)->()) {
        guard let url = URL(string: URLString) else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let error = error {
                    completion(nil, error)
                }
                else if let data = data {
                    completion(data, nil)
                }
            }
        }
        task.resume()
    }
}
