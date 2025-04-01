//
//  ContentView.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        ZStack {
            if viewModel.isLogged {
                // exibir tela de mensagem
                MessageView()
            } else {
                SignInView()
            }
        }.onAppear {
            viewModel.onAppear()
        }
    }
}

#Preview {
    ContentView()
}
