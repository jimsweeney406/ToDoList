//
//  LoginView.swift
//  todolist
//
//  Created by James Sweeney on 3/10/25.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
  
    var body: some View {
        
            VStack {
                // HEADER
                HeaderView(title: "To Do List", subtitle: "Get things done!", angle: 15, background: .green)
                
                // LOGIN FORM
                
                Form{
                    if viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Addres", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(
                        title: "Log in",
                        background: .blue) {
                        
                        // Attempt Login
                    }
                        .padding()
                    
                    Spacer()
                }
                .offset(y: -50)
                
                // CREATE ACCOUNT
                VStack {
                    Text("New User?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.top, -30)
              
            
        }
    }
}

#Preview {
    LoginView()
}
