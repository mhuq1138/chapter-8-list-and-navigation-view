//
//  EditMultipleRowView.swift
//  Editing List View
//
//  Created by Mazharul Huq on 8/15/20.
//

import SwiftUI

struct EditMultipleRowView: View {
    @State private var countries = FlagAndCountry.getCountries()
    @State private var editMode = EditMode.inactive
    @State private var selection = Set<FlagAndCountry>()
    
    var body: some View {
        VStack(spacing:15){
            HStack(spacing:15){
                editButton
                deleteButton
                Spacer()
            }
            List(countries,id:\.self, selection: $selection){
                country in
                HStack{
                    Image(country.flag)
                        .resizable()
                        .frame(width: 100, height: 50)
                        .aspectRatio(contentMode: .fill)
                    Spacer()
                    Text(country.country)
                        .font(.largeTitle)
                }.padding(20)
                
            }.environment(\.editMode, $editMode)
        
        }.padding(20)
         
    }
    
    private var editButton: some View {
        if editMode == .inactive {
            return Button(action: {
                editMode = .active
                selection = Set<FlagAndCountry>()
            }) {
                Text("Edit")
            }
        }
        else {
            return Button(action: {
                editMode = .inactive
                selection = Set<FlagAndCountry>()
            }) {
                Text("Done")
            }
        }
    }
    
    private var deleteButton: some View {
        if editMode == .inactive {
            return Button(action: {}) {
                Image(systemName: "")
            }
        } else {
            return Button(action: delete) {
                Image(systemName: "trash")
            }
        }
    }
    
    func delete(){
        for id in selection {
                if let index = countries.lastIndex(where: { $0 == id })  {
                    countries.remove(at: index)
                }
            }
            selection = Set<FlagAndCountry>()
    }
}

struct EditMultipleRowView_Previews: PreviewProvider {
    static var previews: some View {
        EditMultipleRowView()
    }
}
