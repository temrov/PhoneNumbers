//
//  PhoneCodePickerView.swift
//  PhoneNumber
//
//  Created by Vadim Temnogrudov on 27.03.2024.
//

import SwiftUI

struct PhoneCodePickerView: View {
    @Binding var countryCode: CountryCode
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Text("Country Code Select")
    }
}

#Preview {
    PhoneCodePickerView(countryCode: .constant(.russia))
}
