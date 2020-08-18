//
//  CountryData.swift
//  List with Sections Examples
//
//  Created by Mazharul Huq on 8/16/20.
//

import SwiftUI

struct CountryData: Identifiable {
    let id = UUID()
    let name:String
    let capital:String
    let population:Int
}

extension CountryData{
    static let europeanCountries:[CountryData] =
          [CountryData(name: "United Kingdom", capital: "London", population: 68),
           CountryData(name: "France", capital: "Paris", population: 65)]
    static let asianCountries:[CountryData] =
          [CountryData(name: "China", capital: "Beijing", population: 1440),
           CountryData(name: "Japan", capital: "Tokyo", population: 126)]
    static let africanCountries:[CountryData] =
          [CountryData(name: "Nigeria", capital: "Abuja", population: 206),
           CountryData(name: "Kenya", capital: "Nairobi", population: 54)]
    static let americanCountries:[CountryData] =
          [CountryData(name: "Canada", capital: "Ottawa", population: 38),
           CountryData(name: "Mexico", capital: "Mexico City", population: 129)]
}

