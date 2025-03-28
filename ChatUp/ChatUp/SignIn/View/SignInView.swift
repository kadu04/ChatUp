//
//  SignInView.swift
//  ChatUp
//
//  Created by Ricardo Massaki on 28/03/25.
//

import SwiftUI

struct SignInView: View {
    
    @StateObject var viewModel = SignInViewModel()
    
    var body: some View {
        VStack {
            Image("chat_up_logo")
                .resizable()
                .scaledToFit()
                .padding()
            
            TextField("Entre com seu email", text: $viewModel.email)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(RoundedRectangle(cornerRadius: 24.0)
                    .strokeBorder(Color(UIColor.separator),
                                  style: StrokeStyle(lineWidth: 1.0))
                )
                .padding(.bottom, 8)
            
            SecureField("Entre com sua senha", text: $viewModel.password)
                .autocapitalization(.none)
                .disableAutocorrection(false)
                .padding()
                .background(Color.white)
                .cornerRadius(24.0)
                .overlay(RoundedRectangle(cornerRadius: 24.0)
                    .strokeBorder(Color(UIColor.separator),
                                  style: StrokeStyle(lineWidth: 1.0))
                )
                .padding(.bottom, 30)
            
            Button {
                viewModel.signIn()
            } label: {
                Text("Entrar")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("GreenColor"))
                    .foregroundStyle(Color.white)
                    .cornerRadius(24.0)
            }
            
            Divider()
                .padding()
            
            Button {
                print("Clicado 2!")
            } label: {
                Text("Não tem uma conta? Clique aqui")
                    .foregroundColor(Color.black)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 32)
        .background(Color.init(red: 240 / 255, green: 231 / 255, blue: 210 / 255))
    }
}

#Preview {
    SignInView()
}
