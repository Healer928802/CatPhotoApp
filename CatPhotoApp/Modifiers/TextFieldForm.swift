//
//  TextField.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI

struct TextFieldForm: View {
    @State private var breed: String = ""
    
    var body: some View {
        TextField("Enter breed name", text: $breed)
            .foregroundStyle(.text)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color(.text), lineWidth: 1)
            )
            .padding()
    }
}

#Preview {
    TextFieldForm()
}
