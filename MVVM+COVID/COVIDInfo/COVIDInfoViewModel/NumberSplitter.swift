//
//  NumberSplitter.swift
//  MVVM+COVID
//
//  Created by Ujin Artuhovich on 3/24/21.
//

import Foundation
class Split {
    func splitNumber(number: String) -> String {
        var numberR = String(number.reversed())
        numberR = String(numberR.enumerated().map { $0 > 0 && $0 % 3 == 0 ? [",", $1] : [$1]}.joined())
        let number = String(numberR.reversed())
        return number
    }
}
