//
//  Home.swift
//  JSON
//
//  Created by Alondra García Morales on 19/10/23.
//

import SwiftUI


struct Home: View {
    
    @EnvironmentObject var login : PostViewModel
    @StateObject var json = Modelo1ViewModel()
    
    
    var body: some View {
        
        if json.datosModelo.isEmpty{
            ProgressView()
        }else{
            NavigationView{
                List(json.datosModelo, id:\.id){item in
                    VStack(alignment:.leading){
                        Text(item.name)
                        Text(item.company.name)//SUBNIVELES
                    }
                    
                }.navigationTitle("JSON").toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button(action:{
                            //
                            UserDefaults.standard.removeObject(forKey: "sesion")
                            login.authenticated = 0
                        })
                        {
                            Text("Exit")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        NavigationLink(destination: Home2()){
                            Text("Next")
                        }

                    }
                    
                }
                
            }
        }
        
    }
}


