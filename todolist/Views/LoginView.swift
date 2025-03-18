//
//  LoginView.swift
//  todolist
//
//  Created by James Sweeney on 3/10/25.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView {    
            VStack {
                // HEADER
                HeaderView()
                // LOGIN FORM
                Form{
                    
                    TextField("Email Addres", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Email Addres", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                
                // CREATE ACCOUNT
                VStack {
                    Text("New User?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 40)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
