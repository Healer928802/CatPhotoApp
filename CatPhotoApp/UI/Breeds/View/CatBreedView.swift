//
//  CatBridView.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI

struct CatBreedView: View {
    @ObservedObject private var viewModel = CatBreedViewModel(apiClient: APIClient())
    private let columns = [
        GridItem(),
        GridItem(),
        GridItem()
    ]
    
    var body: some View {
        ScrollView {
            TextFieldForm()
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach($viewModel.catBreeds) { $item in
                    VStack {
                        ImageView(imageStr: String(format: APIConstants.imageURL, item.referenceImageId))
                    }
                }
            }
        }
        .onAppear {
            viewModel.retrieveCatBreeds()
        }
    }
}

#Preview {
    CatBreedView()
}

