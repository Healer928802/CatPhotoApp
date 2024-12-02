//
//  CatPhotoAppApp.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI

@main
struct CatPhotoAppApp: App {
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                SplashScreen()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .breeds:
                            CatBreedView()
                        case .breedDetails(let details):
                            BreedDetailsView(breedDetais: details)
                        }
                    }
            }
        }
    }
}
