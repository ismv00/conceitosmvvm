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
    
    @State var isFollowing = false
    
    var body: some View {
        VStack {
            Image(viewModel.user.picture)
                .resizable()
                .frame(width: 250, height: 250)
                .padding(.bottom, 10)
            Text(viewModel.user.name)
                .font(.system(size: 50, weight: .bold))
            
            Text(viewModel.user.nick)
                .font(.system(size:23, weight: .regular))
            Text("\(viewModel .user.followers)")
                .font(.system(size: 80, weight: .light))
                .padding(40)
            
            
            VStack {
                //Seguir --
                Button{ isFollowing.toggle() } label: {
                    Label("follow", systemImage: "person.circle")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button{} label: {
                    Label("Enviar Mensagem", systemImage: "message")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .disabled(!isFollowing)
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
