//
//  TextField.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI

struct TextFieldForm: View {
    @ObservedObject var viewModel: CatBreedViewModel
    @State private var breed: String = ""
    
    var body: some View {
        TextField("Enter breed name", text: $viewModel.textQuery)
            .foregroundStyle(.text)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(Color(.text), lineWidth: 1)
            )
            .padding()
    }
}
