//
//  EditWithForEachView.swift
//  Editing List View
//
//  Created by Mazharul Huq on 8/15/20.
//

import SwiftUI

struct EditWithForEachView: View {
    @State private var countries = FlagAndCountry.getCountries()
    @State private var editMode = EditMode.inactive
    
    var body: some View {
        VStack(spacing:15){
            HStack(spacing:15){
                editButton
                Spacer()
            }
            List{
                ForEach(countries){
                    country in
                    HStack{
                        Image(country.flag)
                            .resizable()
                            .frame(width: 100, height: 50)
                            .aspectRatio(contentMode: .fill)
                        Spacer()
                        Text(country.country)
                            .font(.title)
                    }.padding(20)
                }.onDelete(perform: delete)
                 .onMove(perform: move)
            }.environment(\.editMode, $editMode)
        }.padding(20)
    }
    
    private var editButton: some View {
        if editMode == .inactive {
            return Button(action: {
                editMode = .active
            }) {
                Text("Edit")
            }
        }
        else {
            return Button(action: {
                editMode = .inactive
            }) {
                Text("Done")
            }
        }
    }
    func delete(at offsets: IndexSet) {
        countries.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        countries.move(fromOffsets: source, toOffset: destination)
    }
}

struct EditWithForEachView_Previews: PreviewProvider {
    static var previews: some View {
        EditWithForEachView()
    }
}
