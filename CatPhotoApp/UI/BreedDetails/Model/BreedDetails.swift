//
//  BreedDetails.swift
//  CatPhotoApp
//
//  Created by Anton Patenko on 02.12.2024.
//

import Foundation

struct BreedDetails: Codable, Hashable {
    var id: String
    var name: String
    var description: String
    var origin: String
    var temperament: String
}
