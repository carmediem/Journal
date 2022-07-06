//
//  Entry.swift
//  Journal
//
//  Created by Carmen Chiu on 7/6/22.
//

import Foundation

//Title
//Date
//Body
//ID

//what is a struct?
    // --Struct is like a class but structs cannot inherit things from other structs, while classes can
    //-- Classes can have a deinitializer
    //-- Structs have a memberwise initializer (do not have to initialize it separately, like class)
    //-- Structs are VALUE types, while classes are reference type
    //-- Struct are light weight

struct Entry: Identifiable { //will take the ID property and will include it at the ID identifier
    var title: String
    var body: String
    //Add default values for properties we will nevre edit
    var date = Date()
    var id =  UUID()
}
