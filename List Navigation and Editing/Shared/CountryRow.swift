//
//  CountryRow.swift
//  List Navigation and Editing
//
//  Created by Mazharul Huq on 8/18/20.
//

import SwiftUI

struct CountryRow: View {
    let flagName: String
    let name: String
    let capital:String
    var body: some View {
        HStack{
            Image(self.flagName)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 76, height: 38, alignment: .center)
               .padding(.trailing, 10)
            Text(self.name)
               .font(.body)
            Spacer()
            Text(self.capital)
               .font(.body)
               .padding()
        }
    }
}


