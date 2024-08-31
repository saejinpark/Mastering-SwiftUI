//
//  TextFieldStyles.swift
//  MasteringSwiftUI
//
//  Created by 박세진 on 8/30/24.
//  Copyright © 2024 Keun young Kim. All rights reserved.
//

import SwiftUI

struct TextFieldStyles: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var favoritsNumber: Int = 0
    
    var body: some View {
        VStack {
            
            TextField("Email", text: $email, prompt: Text("Input Email"))
                .padding()
                .textFieldStyle(.roundedBorder)
                .textContentType(.username)
                .keyboardType(.emailAddress)
            SecureField("Password", text: $password, prompt: Text("Input Password"))
                .padding()
                .textFieldStyle(.roundedBorder)
                .textContentType(.password)
                .keyboardType(.numberPad)
            
            TextField(
                "Number",
                value: $favoritsNumber,
                format: .number,
                prompt: Text("Input Number")
            )
                .padding()
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
            Text("\(favoritsNumber)")
                .font(.largeTitle)
        }
    }
}

#Preview {
    TextFieldStyles()
}
