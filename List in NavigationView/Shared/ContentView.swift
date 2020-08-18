//
//  ContentView.swift
//  Shared
//
//  Created by Mazharul Huq on 8/18/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(1...50, id: \.self){i in
                NavigationLink(destination: Text("Destination: #\(i)")
                                               .font(.largeTitle)) {
                    Text("Hello World! counting: \(i)")
                        .font(.title)
                        .foregroundColor(.orange)
                }
            }.navigationTitle("Large List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
