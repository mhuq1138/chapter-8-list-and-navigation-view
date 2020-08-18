//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/18/20.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = CountryData.getCountries()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(countries){country in
                    NavigationLink(
                        destination: CountryDetailView(country: country)){
                        CountryRow(flagName: country.flag, name: country.name, capital: country.capital)
                    }
                }.onDelete(perform: delete)
                 .onMove(perform: move)
            }.navigationTitle("Country List")
             .toolbar {
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: add){
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        countries.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        countries.move(fromOffsets: source, toOffset: destination)
    }
    
    func add(){
       countries.append(CountryData(flag:  "UK", name: "United Kindgom", capital: "London", description: "United Kinddom island country located off the northwestern coast of mainland Europe. The United Kingdom comprises the whole of the island of Great Britain—which contains England, Wales, and Scotland—as well as the northern portion of the island of Ireland. The name Britain is sometimes used to refer to the United Kingdom as a whole. "))
                 
       countries.append(CountryData(flag:  "Canada", name: "Canada", capital: "Ottawa", description: "Canada is second largest country in the world in area (after Russia), occupying roughly the northern two-fifths of the continent of North America. Despite Canada’s great size, it is one of the world’s most sparsely populated countries. "))
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
