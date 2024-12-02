//
//  TextForm.swift
//  CatPhotoApp
//
//  Created by Anton on 02.12.2024.
//

import SwiftUI

struct TextForm: View {
    var title: String = ""
    var text: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .foregroundStyle(.text)
                .fontWeight(.semibold)
            Text(text)
                .foregroundStyle(.text)
        }
        .padding(.all, 10)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.text, lineWidth: 1)
                .background(RoundedRectangle(cornerRadius: 10).fill(.highlited))
            )
        .shadow(radius: 10.0)
        .padding(.all, 10)
    }
}

#Preview {
    TextForm()
}
