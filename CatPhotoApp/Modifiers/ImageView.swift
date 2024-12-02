//
//  ImageView.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageView: View {
    var imageStr: String = ""
    
    var body: some View {
        WebImage(url: URL(string: imageStr)) { image in
            image.resizable()
        } placeholder: {
            Rectangle().foregroundStyle(.blue).opacity(0.5)
                .clipShape(.rect(cornerRadius: 10.0))
        }
        .indicator(.activity(style: .circular))
        .scaledToFill()
        .transition(.fade)
        .frame(width: (UIScreen.main.bounds.size.width / 3) - 5, height: 150, alignment: .center)
        .clipShape(.rect(cornerRadius: 10.0))
    }
}

#Preview {
    ImageView()
}
