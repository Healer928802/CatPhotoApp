//
//  CatBridView.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI

struct CatBreedView: View {
    @StateObject private var viewModel = CatBreedViewModel(apiClient: APIClient())
    private let columns = [
        GridItem(),
        GridItem(),
        GridItem()
    ]
    
    var body: some View {
        ScrollView {
            TextFieldForm(viewModel: viewModel)
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(viewModel.searchResult) { item in
                    ImageView(imageStr: String(format: APIConstants.imageURL, item.referenceImageId))
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

