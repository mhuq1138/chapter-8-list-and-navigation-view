//
//  FlagAndCountry.swift
//  Editing List View
//
//  Created by Mazharul Huq on 8/15/20.
//

import SwiftUI

struct FlagAndCountry: Identifiable, Hashable{
    var id = UUID()
    var flag: String
    var country: String
    
    static func getCountries()-> [FlagAndCountry]{
        
        let myArray:[FlagAndCountry] =
                    [FlagAndCountry(flag: "Bangladesh", country: "Bangladesh"),
                     FlagAndCountry(flag: "Canada", country: "Canada"),
                     FlagAndCountry(flag: "China", country: "China"),
                     FlagAndCountry(flag: "France", country: "France"),
                     FlagAndCountry(flag: "Germany", country: "Germany"),
                     FlagAndCountry(flag: "India", country: "India"),
                     FlagAndCountry(flag: "USA", country: "USA")]
        return myArray
    }
}
