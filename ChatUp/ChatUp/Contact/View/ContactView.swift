//
//  ContactView.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 01/04/25.
//

import SwiftUI

struct ContactView: View {
    
    @StateObject var viewModel = ContactViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.contacts, id: \.self) { contact in
                ContactRow(contact: contact)
            }
        }.onAppear {
            viewModel.getContacts()
        }
    }
}

struct ContactRow: View {
    
    var contact: Contact
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: contact.profileUrl)) { image in
                image.resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            
            Text(contact.name)
        }
    }
}

#Preview {
    ContactView()
}
