//
//  HeaderView.swift
//  todolist
//
//  Created by James Sweeney on 3/10/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.green)
                .rotationEffect(Angle(degrees: 15))
                
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                Text("Get Things Done!")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding(.top, 100 )
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -185)
    }
}

#Preview {
    HeaderView()
}
