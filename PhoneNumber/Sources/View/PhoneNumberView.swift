//
//  PhoneNumberView.swift
//  PhoneNumber
//
//  Created by Vadim Temnogrudov on 30.03.2024.
//

import SwiftUI

struct PhoneNumberView: View {
    @State private var countryCode: CountryCode = .russia
    @State private var phoneNumber: String = ""
    @State private var countryCodePickerShown = false
    var body: some View {

        List {
            Section {
                Button(action: {
                    countryCodePickerShown = true
                }, label: {
                    HStack {
                        Text(countryCode.name)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                })

                HStack {
                    Button(countryCode.code) {
                        countryCodePickerShown = true
                    }
                    TextField("Phone number", text: $phoneNumber)
                        .keyboardType(.namePhonePad)
                }

            }
        }
        .sheet(isPresented: $countryCodePickerShown, content: {
            PhoneCodePickerView(countryCode: $countryCode)
        })    }
}

#Preview {
    PhoneNumberView()
}
