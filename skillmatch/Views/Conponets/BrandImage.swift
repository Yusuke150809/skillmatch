//
//  BrandImage.swift
//  skillmatch
//
//  Created by 中村優介 on 2025/07/02.
//

import SwiftUI

struct BrandImage: View {
    var body: some View {
        Image(systemName: "flame.circle.fill")
            .resizable()
            .scaledToFit()
            .foregroundStyle(.red)
            .frame(width: 120, height: 120)
            .padding(.vertical,32)
    }
}

#Preview {
    BrandImage()
}
