//
//  UserDM.swift
//  HSSearchable
//
//  Created by Hitendra iDev on 28/08/17.
//  Copyright © 2017 Hitendra iDev. All rights reserved.
//

import Foundation

struct UserDM {

    var name: String
    var city: String
}

extension UserDM: SearchableData {
    /*
     this will only search from the name
     */
//    var searchValue: String{
//        return self.name
//    }
    
    /*
     this will search from the name and city both
     */
    var searchValue: String{
        return self.name + " " + self.city
    }
}
