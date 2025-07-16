//
//  LoginView.swift
//  skillmatch
//
//  Created by 中村優介 on 2025/06/28.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                //image
                BrandImage()
              
                //Form
                VStack(spacing: 24) {
                    
                    InputField(text: $email, label: "メールアドレス", placeholder: "入力してください")
                    InputField(text: $password, label: "パスワード", placeholder: "半角６文字以上", isSecureField: true)
                
                }
                
                //Buttton
                
                BasicButton(label: "ログイン", icon: "arrow.right") {
                    print("ログインボタンがタップされました")
                }
                .padding(.top,24)
                
                Spacer()
                
                //Navigation
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                        
                } label : {
                    HStack{
                        Text("まだアカウントをお持ちではない方")
                        Text("会員登録")
                            .fontWeight(.bold)
                    }
                    .foregroundStyle(Color(.darkGray))
                }
            }
            .padding(.top, 24)
        }
    }
}

#Preview {
    LoginView()
}

