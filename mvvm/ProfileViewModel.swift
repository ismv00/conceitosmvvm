//
//  ProfileViewModel.swift
//  mvvm
//
//  Created by Igor S. Menezes on 13/01/23.
//

import Foundation

//MARK: - VIEWMODEL
//Estanciando o tipo de usuário
struct ProfileViewModel {
    
    var isFollowing = false
    var userFollowers = String()
    
    var user = User(picture: "profile",
                    name: "Igor S. Menezes",
                    nick: "euigoor",
                    followers: 22643)
    
    init(){
            loadFollowers()
    }
    
    mutating func loadFollowers() {
        self.userFollowers = customizeNumber(value: user.followers)
    }
    func customizeNumber(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = Locale(identifier: "pt_BR")
        let shorten = formatter.string(for: value) ?? "0"
        return "\(shorten)K"
    }
    
    mutating func followToogle() {
        self.isFollowing.toggle()
        self.isFollowing ? (self.user.followers += 1) : (self.user.followers -= 1)
        loadFollowers()
    }
}

