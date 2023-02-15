//
//  CurrencyConverterModel.swift
//  AU_05
//
//  Created by Chris on 2/14/23.
//

import Foundation

let CAD = Currency(name: "Canadian Dollar", abbreviation: "CAD", rateToUSD: 1.2597)
let MXN = Currency(name: "Mexican Peso", abbreviation: "MXN", rateToUSD: 20.1851)
let GBP = Currency(name: "British Pound", abbreviation: "GBP", rateToUSD: 0.7219)
let EUR = Currency(name: "Euro", abbreviation: "EUR", rateToUSD: 0.8252)


struct Currency: Equatable {
    let name: String
    let abbreviation: String
    let rateToUSD: Double
    
    static func == (lhs: Currency, rhs: Currency) -> Bool {
        return lhs.name == rhs.name && lhs.abbreviation == rhs.abbreviation && lhs.rateToUSD == rhs.rateToUSD
    }
    
}
