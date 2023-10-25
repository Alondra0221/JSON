//
//  Modelo1.swift
//  JSON
//
//  Created by Alondra García Morales on 19/10/23.
//

import Foundation

class Modelo1 : Decodable {
    var id : Int
    var name : String
    var username : String
    var email : String
    var address : Address // subNiveles de JSONS 
    var phone : String
    var website : String
    var company : Company
}

struct Address : Decodable {
    var street : String
    var suite : String
    var city : String
    var zipcode : String
    var geo : Geo
}

struct Geo : Decodable {
    var lat, lng : String
}

struct Company : Decodable {
    var name, catchPhrase, bs: String
}
