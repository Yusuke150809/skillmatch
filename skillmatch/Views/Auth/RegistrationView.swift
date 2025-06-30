//
//  RegistrationView.swift
//  skillmatch
//
//  Created by 中村優介 on 2025/06/29.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var password2: String = ""
    @State private var age: Int = 18
    @State private var name: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                
                //image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.red)
                    .frame(width: 120, height: 120)
                    .padding(.vertical,32)
                
                
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
                        Text("お名前")
                            .foregroundStyle(Color(.darkGray))
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                        TextField("入力してください", text: $name)
                        Divider()
                    }
                    
                    VStack(alignment: .leading, spacing: 12){
                        
                        HStack {
                            Text("年齢")
                                .foregroundStyle(Color(.darkGray))
                                .fontWeight(.semibold)
                                .font(.footnote)
                            
                            
                            Spacer()
                            
                            Picker(selection: $age) {
                                ForEach(18..<100) { number in
                                    Text("\(number)")
                                        .tag(number)
                                    
                                }
                            } label: {
                                Text("年齢")
                            }
                            .tint(.black)
                            
                            
                            
                        }
                        Divider()
                        
                    }
                    VStack(alignment: .leading, spacing: 12) {
                        Text("パスワード")
                            .foregroundStyle(Color(.darkGray))
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                        SecureField("半角英数字６文字以上", text: $password)
                        Divider()
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("パスワード（確認用）")
                            .foregroundStyle(Color(.darkGray))
                            .fontWeight(.semibold)
                            .font(.footnote)
                        
                        SecureField("もう一度入力してください", text: $password2)
                        Divider()
                    }
                }
                .padding(.horizontal)
                
                
                
                //Buttton
                Button {
                    print("ログインボタンをタップしました")
                } label: {
                    Text("登録")
                    Image(systemName: "arrow.right")
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(Color.red)
                .clipShape(Capsule())
                
                
                
            }
            .padding(.top,24)
        }
            Spacer()
            //Navigation
            Button {
               dismiss()
            } label : {
                HStack{
                    Text("既にアカウントをお持ちの方")
                    Text("ログイン")
                        .fontWeight(.bold)
                    
                }
            }
            .padding(.horizontal)
       
    }
       
}

#Preview {
    RegistrationView()
}
