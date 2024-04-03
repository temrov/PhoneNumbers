//
//  CountryCode.swift
//  PhoneNumber
//
//  Created by Vadim Temnogrudov on 27.03.2024.
//

import Foundation

struct CountryCode {
    let name: String
    let code: String
}

extension CountryCode {

    static let russia = CountryCode(name: "Russia", code: "+7")
}
