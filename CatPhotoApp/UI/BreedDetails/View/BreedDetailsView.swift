//
//  BreedDetailsView.swift
//  CatPhotoApp
//
//  Created by Anton Patenko on 02.12.2024.
//

import SwiftUI

struct BreedDetailsView: View {
    var breedDetais: BreedDetails
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ImageView(imageStr: breedDetais.image, width: 300, height: 300)
                TextForm(title: "Temperament", text: breedDetais.temperament)
                TextForm(title: "Description", text: breedDetais.description)
            }
        }
        .navigationTitle("\(breedDetais.name) (\(breedDetais.origin))")
    }
}
