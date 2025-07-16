//
//  BasicButton.swift
//  skillmatch
//
//  Created by 中村優介 on 2025/07/02.
//

import SwiftUI

struct BasicButton: View {
    let label : String
    var icon : String? = nil
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Text(label)
                if let name = icon {
                    Image(systemName: name)
                }
                
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .background(Color.red)
            .clipShape(Capsule())
        }
      
    }
}

#Preview {
    BasicButton(label: "ボタン") {
        print("ボタンがタップされました")
    }
}
