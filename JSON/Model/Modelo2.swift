//
//  Modelo2.swift
//  JSON
//
//  Created by Alondra García Morales on 19/10/23.
//

import Foundation

struct Modelo2: Decodable {
    var data : [UserList]
}

struct User : Decodable {
    var data : UserList
}
struct UserList: Decodable {
    var id : Int
    var first_name, email, avatar : String 
}
