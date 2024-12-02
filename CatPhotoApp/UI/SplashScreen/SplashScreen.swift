//
//  SplashScreen.swift
//  CatPhotoApp
//
//  Created by Anton Patenko on 02.12.2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        Image(systemName: "cat.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SplashScreen()
}
