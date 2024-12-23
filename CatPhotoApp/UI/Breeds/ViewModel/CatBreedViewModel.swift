//
//  CatBreedViewModel.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import Foundation

final class CatBreedViewModel: ObservableObject {
    @Published var catBreeds: [BreedsResponse] = []
    private var cashedResult: [BreedsResponse]?
    @Published var textQuery = ""
    
    let apiClient: APIClientProtocol
    
    init(apiClient: APIClientProtocol) {
        self.apiClient = apiClient
    }
    
    func retrieveCatBreeds() {
        if let cashedResult = cashedResult {
            catBreeds = cashedResult
            return
        }
        
        Task {
            do {
                let result = try await apiClient.asyncRequest(router: APIRouter.breedImages(limit: 10), response: [BreedsResponse].self)
                cashedResult = result
                
                await MainActor.run {
                    catBreeds = result
                }
            } catch {
                debugPrint(error.localizedDescription)
            }
        }
    }
    
    var searchResult: [BreedsResponse] {
        if textQuery.isEmpty {
            return catBreeds
        } else {
            return catBreeds.filter { $0.name.contains(textQuery) }
        }
    }
}
