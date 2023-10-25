//
//  DetalleView.swift
//  JSON
//
//  Created by Alondra García Morales on 19/10/23.
//

import SwiftUI

struct DetalleView: View {

    var id : Int
    @StateObject var user = DetalleViewModel()
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: user.avatar))
                .frame(width:85, height:85)
                .clipped()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(user.first_name).font(.largeTitle)
            Text(user.email).font(.title)
        }.onAppear{
            user.fetch(id: id)
        }
    }
}

