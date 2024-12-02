//
//  SplashScreen.swift
//  CatPhotoApp
//
//  Created by Anton Patenko on 02.12.2024.
//

import SwiftUI

struct SplashScreen: View {
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack(spacing: 30.0) {
            Image(systemName: "cat.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Test App")
                .font(.title)
                .fontWeight(.bold)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                router.navigate(to: .breeds)
            }
        }
    }
}

#Preview {
    SplashScreen()
}
