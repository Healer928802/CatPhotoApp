//
//  BreedsResponse.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import Foundation

struct BreedsResponse: Decodable, Identifiable {
    let id: String
    let name: String
    let temperament: String
    let origin: String
    let description: String
    let wikipediaUrl: String
    let referenceImageId: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, temperament, origin, description
        case wikipediaUrl = "wikipedia_url"
        case referenceImageId = "reference_image_id"
    }
}