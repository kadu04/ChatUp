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
        Button {
            viewModel.logout()
        } label: {
            Text("Logout")
        }
    }
}

#Preview {
    MessageView()
}
