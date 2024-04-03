//
//  CountryCodeDTO.swift
//  PhoneNumber
//
//  Created by Vadim Temnogrudov on 27.03.2024.
//

import Foundation

struct CountryCodeDTO {
    let code: String
    let dialCode: String
    let name: String
}

extension CountryCodeDTO: Codable {
    
}
