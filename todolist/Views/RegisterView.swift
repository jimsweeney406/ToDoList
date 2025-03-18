//
//  RegisterView.swift
//  todolist
//
//  Created by James Sweeney on 3/10/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organizing", angle: -15, background: .orange)
            
            Spacer()
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Register",
                    background: .green) {
                        // Attempt registration
                    }
                    .padding()
            }
            
            .offset(y: -50)
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    RegisterView()
}
