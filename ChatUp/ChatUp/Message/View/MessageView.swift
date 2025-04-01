//
//  MessageView.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 01/04/25.
//

import SwiftUI

struct MessageView: View {
    
    @StateObject var viewModel = MessageViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Olá")
            }
            .toolbar {
                ToolbarItem(id: "contacts",
                            placement: ToolbarItemPlacement.navigationBarTrailing,
                            showsByDefault: true) {
                    NavigationLink("Contatos", destination: ContactView())
                }
                ToolbarItem(id: "logout",
                            placement: ToolbarItemPlacement.navigationBarTrailing,
                            showsByDefault: true) {
                    Button("Logout") {
                        viewModel.logout()
                    }
                }
            }
        }
    }
}

#Preview {
    MessageView()
}
