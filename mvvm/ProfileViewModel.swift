//
//  ProfileViewModel.swift
//  mvvm
//
//  Created by Igor S. Menezes on 13/01/23.
//

import Foundation
import SwiftUI

//MARK: - VIEWMODEL
//Estanciando o tipo de usuário
struct ProfileViewModel {
    var user = User(picture: "profile",
                    name: "Igor S. Menezes",
                    nick: "euigoor",
                    followers: 22643)
}

