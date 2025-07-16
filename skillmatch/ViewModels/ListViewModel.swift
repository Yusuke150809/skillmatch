//
//  ListViewModel.swift
//  MatchingWithSwiftUI2
//
//  Created by 中村優介 on 2025/06/08.
//

import Foundation
class ListViewModel {
    
    
    var users = [User]()
    private var currentIndex = 0
    init() {
        self.users = getMockUsers()
    }
    
    private func getMockUsers() -> [User] {
        return [
            User.MOCK_USER1,
            User.MOCK_USER2,
            User.MOCK_USER3,
            User.MOCK_USER4,
            User.MOCK_USER5,
            User.MOCK_USER6,
            User.MOCK_USER7,
        ]
    }
    func adjustIndex(isRedo: Bool) {
        if isRedo {
            currentIndex -= 1
        } else {
            currentIndex += 1
        }
    }
    
    
    //列挙型Ardinoでも使用
    func tappedHandler(action: Action) {
       switch action {
       case .nope,.like:
           if currentIndex >= users.count {
               return
           }
       case .redo:
           if currentIndex <= 0 {
               return
           }
           NotificationCenter .default.post(name: Notification.Name("AUTIONEROMBUTTON"), object: nil,userInfo: [
            "id": action == .redo ? users[currentIndex - 1].id : users[currentIndex].id,
               "action": action
           ])
       }
    }
}

