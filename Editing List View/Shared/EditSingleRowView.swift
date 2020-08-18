//
//  EditSingleRowView.swift
//  Editing List View
//
//  Created by Mazharul Huq on 8/14/20.
//

import SwiftUI

struct EditSingleRowView: View {
    @State private var capitals = ["London", "Washington  DC",
                                   "Paris","Cairo","New Delhi"]
    @State private var editMode = EditMode.inactive
    @State private var selection:String?
    @State private var addFlag = false
    @State private var addCapital = ""
    
    var body: some View {
        VStack(spacing:15){
            HStack{
                editButton
                deleteButton
                Spacer()
                addButton
            }
            if addFlag{
                HStack{
                    TextField("Add capital", text: $addCapital)
                    Button("Save"){
                        capitals.append(addCapital)
                        addFlag = false
                        addCapital = ""
                    }
                }
            }
            List(capitals,id: \.self,selection:$selection){capital in
                Text(capital)
                    .font(.largeTitle)
                    .foregroundColor(.orange)  
            }.environment(\.editMode, $editMode)
        }.padding(20)
    }
    
    private var editButton: some View {
        if editMode == .inactive {
            return Button(action: {
                editMode = .active
                selection = nil
            }) {
                Text("Edit")
            }
        }
        else {
            return Button(action: {
                editMode = .inactive
                selection = nil
            }) {
                Text("Done")
            }
        }
    }
    
    private var addButton: some View {
        return Button("Add"){
            addFlag = true
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
        if let index = capitals.lastIndex(of: selection!){
            capitals.remove(at: index)
        }
    }
}

struct EditSingleRowView_Previews: PreviewProvider {
    static var previews: some View {
        EditSingleRowView()
    }
}
