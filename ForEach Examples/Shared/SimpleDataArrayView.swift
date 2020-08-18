//
//  SimpleDataArrayView.swift
//  ForEach Examples
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI



struct SimpleDataArrayView: View {
    let colors: [UIColor] = [.red, .green, .orange, .blue, .gray, .purple, .yellow]
    
    var body: some View {
        VStack{
           ForEach(colors, id: \.self){ color in
               Color(color)
           }
        }.navigationTitle("Simple Data Array")
    }
}



struct SimpleDataArrayView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleDataArrayView()
    }
}
