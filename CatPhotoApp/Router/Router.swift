//
//  Router.swift
//  CatPhotoApp
//
//  Created by Anton Patenko on 02.12.2024.
//

import SwiftUI

final class Router: ObservableObject {
    enum Destination: Codable, Hashable {
        case breeds
        case breedDetails(details: BreedDetails)
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func pop() {
        navPath.removeLast()
    }
    
    func popToRoot() {
        navPath.removeLast(navPath.count)
    }
}
