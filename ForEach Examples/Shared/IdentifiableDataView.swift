//
//  IdentifiableDataView.swift
//  ForEach Examples
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct IdentifiableDataView: View {
    let myArray:[FlagAndCountry] =
            [FlagAndCountry(flag: "Bangladesh", country: "Bangladesh"),
             FlagAndCountry(flag: "Canada", country: "Canada"),
             FlagAndCountry(flag: "China", country: "China"),
             FlagAndCountry(flag: "France", country: "France"),
             FlagAndCountry(flag: "Germany", country: "Germany"),
             FlagAndCountry(flag: "India", country: "India"),
             FlagAndCountry(flag: "USA", country: "USA")]
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(myArray){ country in
                HStack{
                    Image(country.flag)
                        .resizable()
                        .frame(width: 100, height: 50)
                        .aspectRatio(contentMode: .fill)
                    Spacer()
                    Text(country.country)
                        .font(.largeTitle)
                }.padding(20)
                .onTapGesture{
                    print("\(country.country)")
                }
            }
        }.navigationTitle("Identifiable Data Array")
    }
}

struct FlagAndCountry: Identifiable{
    var id = UUID()
    var flag: String
    var country: String
}

struct IdentifiableDataView_Previews: PreviewProvider {
    static var previews: some View {
        IdentifiableDataView()
    }
}
