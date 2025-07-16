//
//  MyPageView.swift
//  skillmatch
//
//  Created by 中村優介 on 2025/07/01.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        List {
            //user info
            //ヘッダーをつけたい時に表示
            Section {
                HStack {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 48, height: 48)
                        .clipShape(Circle())
                    
                    
                    VStack {
                        Text("ブルー")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text("yu9su1ke1@gmail.com")
                            .font(.footnote)
                            .tint(.gray)
                    }
                }
            }
            //system info
            Section("一般") {
                HStack(spacing: 16){
                    Image(systemName : "gear")
                        .imageScale(.large)
                        .foregroundStyle(.gray)
                    
                    
                Text("バージョン")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Spacer()
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            //Navigation
            Section("アカウント") {
                Button {
                    
                } label: {
                    HStack(spacing: 16){
                        Image(systemName : "sqare.and.pencil.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(.gray)
                        
                        
                    Text("プロフィール変更")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                    
                }
            }
             }
            }
}

#Preview {
    MyPageView()
}
