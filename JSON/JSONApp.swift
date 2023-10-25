//
//  JSONApp.swift
//  JSON
//
//  Created by Alondra García Morales on 18/10/23.
//

import SwiftUI

@main
struct JSONApp: App {


    var body: some Scene {
        let login = PostViewModel()
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
