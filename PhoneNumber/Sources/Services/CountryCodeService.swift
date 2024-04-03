//
//  CountryCodeService.swift
//  PhoneNumber
//
//  Created by Vadim Temnogrudov on 27.03.2024.
//

import Foundation

final class CountryCodeService {
    let codes: [CountryCode]

    init() {
        let url = Bundle.main.url(forResource: "country_codes", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let jsonData = try! decoder.decode([CountryCodeDTO].self, from: data)
        codes = jsonData.compactMap({ CountryCode(name: $0.name, code: $0.dialCode)})
    }

    func filter(query: String) -> [CountryCode] {
        codes.filter({ $0.name.lowercased().contains(query.lowercased())})
    }
}

extension CountryCodeService {
    static let shared = CountryCodeService()
}
