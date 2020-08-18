//
//  DetailView2.swift
//  Simply Navigation View
//
//  Created by Mazharul Huq on 8/18/20.
//

import SwiftUI

struct DetailView2: View {
    var body: some View {
        Text("Hello from DetailView2")
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Color.blue)
            .navigationTitle("Detail View 2")
    }
}

struct DetailView2_Previews: PreviewProvider {
    static var previews: some View {
        DetailView2()
    }
}
