//
//  ContentView.swift
//  mvvm
//
//  Created by Igor S. Menezes on 13/01/23.
//

import SwiftUI

//MARK: - VIEW
struct ContentView: View {
    
    @State var viewModel = ProfileViewModel()
    
    
    
    var body: some View {
        VStack {
            Image(viewModel.user.picture)
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.bottom, 5)
                .cornerRadius(90)
            Text(viewModel.user.name)
                .font(.system(size: 50, weight: .bold))
            
            Text(viewModel.user.nick)
                .font(.system(size:23, weight: .regular))
            Text(viewModel.userFollowers)
                .font(.system(size: 80, weight: .light))
                .padding(40)
            
            
            VStack {
                //Seguir --
                Button{ viewModel.followToogle() } label: {
                    Label(!viewModel.isFollowing ? "follow" : "unfollow", systemImage: "person.circle")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(!viewModel.isFollowing ? .blue : .black)
                
                Button{} label: {
                    Label("Enviar Mensagem", systemImage: "message")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(!viewModel.isFollowing)
            }
            .padding(20)
        }
        
    }
}
    
    
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
}
