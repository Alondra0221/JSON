//
//  ContentView.swift
//  JSON
//
//  Created by Alondra García Morales on 18/10/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @EnvironmentObject var login : PostViewModel

    var body: some View {
        Group{
            if login.authenticated == 0{
                Login()
            }else if login.authenticated == 1{
                Home()
            }else if login.authenticated == 2 {
                VStack{
                    Image("forgot").resizable().frame(width: 200, height: 200, alignment: .center).padding(.bottom,50)
                    Text("Username or password is incorrect").font(.title2).padding(.bottom,50)
                    Button(action:{
                        login.authenticated = 0
                    }){
                        BackButton()
                    }
                }
            }
        }

    }
}

struct BackButton : View{
    var body: some View {
        
        Text("Go Back")
            .font(.title3)
            .bold()
            .foregroundStyle(.white)
            .frame(maxWidth: 200 , maxHeight: 10)
            .padding()
            .background(Color(.black))
            .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
    }
}

#Preview {
    ContentView()
}


