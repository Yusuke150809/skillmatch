//
//  InputField.swift
//  skillmatch
//
//  Created by 中村優介 on 2025/07/02.
//

import SwiftUI

struct InputField: View {
    
    @Binding var text: String
    let label: String
    let placeholder: String
    var isSecureField = false
    
    
    
    var body: some View {
        VStack(spacing: 24) {
      
            
            VStack(alignment: .leading, spacing: 12){
                Text(label)
                    .foregroundStyle(Color(.darkGray))
                    .fontWeight(.semibold)
                    .font(.footnote)
                if isSecureField {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
                
                Divider()
            }
        }
    }
}
#Preview {
    InputField(text: .constant(""), label: "メールアドレス", placeholder: "入力してください")
}
