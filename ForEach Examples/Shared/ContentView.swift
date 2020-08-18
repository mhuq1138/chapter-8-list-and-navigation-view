//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: ClosedRangeView()){
                    Text("Closed Rangel as Data")
                }
                NavigationLink(destination: SimpleDataArrayView()){
                    Text("Simple Type Array as Data")
                }
                NavigationLink(destination: CustomDataArrayView()){
                    Text("Custom Data Array")
                }
                NavigationLink(destination: IdentifiableDataView()){
                    Text("Identifiable Data Array")
                }
            }.navigationBarTitle("ForEach Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
