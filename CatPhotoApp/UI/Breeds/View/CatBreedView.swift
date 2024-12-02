//
//  CatBridView.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI

struct CatBreedView: View {
    @StateObject private var viewModel = CatBreedViewModel(apiClient: APIClient())
    @EnvironmentObject private var router: Router
    
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
                        .onTapGesture {
                            let details = BreedDetails(
                                id: item.id,
                                name: item.name,
                                description: item.description,
                                origin: item.origin,
                                temperament: item.temperament,
                                image: String(format: APIConstants.imageURL, item.referenceImageId)
                            )
                            router.navigate(to: .breedDetails(details: details))
                        }

                }}
        }
        .navigationBarBackButtonHidden()
        .onAppear {
            viewModel.retrieveCatBreeds()
        }
    }
}

#Preview {
    CatBreedView()
}

