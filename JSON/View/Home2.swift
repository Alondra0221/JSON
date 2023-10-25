//
//  Home2.swift
//  JSON
//
//  Created by Alondra García Morales on 19/10/23.
//

import SwiftUI

struct Home2: View {
    
    @StateObject var json2 = Modelo2ViewModel()
    var body: some View {
        
        if json2.datosModelo.data.isEmpty{
            ProgressView()
        }else{
            List(json2.datosModelo.data, id:\.id){item in
                NavigationLink(destination: DetalleView(id: item.id)){
                    HStack{
                        AsyncImage(url: URL(string: item.avatar))
                            .frame(width:85, height:85)
                            .clipped()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        VStack(alignment:.leading){
                            Text(item.first_name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            Text(item.email).font(.subheadline)
                        }
                    }
                }
            }.navigationTitle("JSON with image")
        }
    }
}




