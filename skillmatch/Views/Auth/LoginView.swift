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
<<<<<<< HEAD
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
=======
                
                //image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.red)
                    .frame(width: 120, height: 120)
                    .padding(.vertical, 32)
                
                //Form
                VStack(spacing: 24) {
                    VStack(alignment: .leading, spacing: 12){
                        Text("メールアドレス")
                            .foregroundStyle(Color(.darkGray))
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                        TextField("入力してください", text: $email)
                        Divider()
                    }
                    VStack(alignment: .leading, spacing: 12){
                        Text("パスワード")
                            .foregroundStyle(Color(.darkGray))
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                        SecureField("半角英数字６文字以上", text: $password)
                        Divider()
                    }
                }
                .padding(.horizontal)
                
                //Buttton
                Button {
                    print("ログインボタンをタップしました")
                } label: {
                    Text("ログイン")
                    Image(systemName: "arrow.right")
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(Color.red)
                .clipShape(Capsule())
                .padding(.horizontal)
>>>>>>> 5bc598a5105d30e198b2966897f9147a4817cab3
                
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

