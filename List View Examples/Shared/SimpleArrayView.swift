//
//  SimpleArrayView.swift
//  List View Examples
//
//  Created by Mazharul Huq on 8/13/20.
//

import SwiftUI

struct SimpleArrayView: View {
    let myArray = ["London", "Paris", "Glasgow", "Moscow", "Sidney"]
    var body: some View {
        List(myArray, id:\.self){ item in
            Text(item)
                .font(.largeTitle)
                .foregroundColor(.orange)
        }
    }
}

struct SimpleArrayView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleArrayView()
            .previewLayout(.fixed(width: 350, height: 300))
    }
}
