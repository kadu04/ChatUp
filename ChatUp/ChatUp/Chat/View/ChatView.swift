//
//  ChatView.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 02/04/25.
//

import SwiftUI

struct ChatView: View {
    
    let username: String
    @StateObject var viewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                ForEach(viewModel.messages, id: \.self) { message in
                    MessageRow(message: message)
                }
            }
            
            Spacer()
            
            HStack {
                TextField("Digite a mensagem", text: $viewModel.text)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(24.0)
                    .overlay(RoundedRectangle(cornerRadius: 24.0)
                        .strokeBorder(Color(UIColor.separator),
                                      style: StrokeStyle(lineWidth: 1.0))
                    )
                
                Button {
                    //
                } label: {
                    Text("Enviar")
                        .padding()
                        .background(Color("GreenColor"))
                        .foregroundColor(Color.white)
                        .cornerRadius(24.0)
                }
                .disabled(viewModel.text.isEmpty)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
        }
        .navigationTitle(username)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MessageRow: View {
    
    let message: Message
    
    var body: some View {
        Text(message.text)
            .background(Color(white: 0.95))
            .frame(maxWidth: .infinity, alignment: message.isMe ? .leading : .trailing)
            .lineLimit(nil)
            .fixedSize(horizontal: false, vertical: true)
            .padding(.leading, message.isMe ? 0 : 50)
            .padding(.trailing, message.isMe ? 50 : 0)
            .padding(.vertical, 5)
    }
}

#Preview {
    ChatView(username: "Olá mundo")
}
