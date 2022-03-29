//
//  ListRowItemView.swift
//  DevoteBook
//
//  Created by magnodev
//

import SwiftUI

struct ListRowItemView: View {
    // MARK: - PROPERTY
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    
    
    // MARK: - BODY
    var body: some View {
        Toggle(isOn: $item.completion){
            Text(item.task ?? "")
                .font(.system(.headline, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink: Color.primary)
                .padding(.vertical, 12)
        }//:TOGGLE
        .toggleStyle(CheckBoxStyle())
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges{
                try? self.viewContext.save()
            }
        })
    }
}

