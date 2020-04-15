//
//  GridLayoutView.swift
//  smallAnimalStoryBook
//
//  Created by User20 on 2020/4/15.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct GridLayoutView: View {
    
    let names = [["Apr","Mar"], ["Feb", "Jan"], ["Dec", "Nov"]]
    let names2 = [["event1","event2"], ["event3", "event4"]]
    var columnCount = 3;
    var columnCount2 = 2;
    let photoWidth = (UIScreen.main.bounds.size.width - 10) / 2
    
    var body: some View {
        List {
            VStack {
                Section(header: Text("Wall Paper")){
                    ForEach(0..<names.count){ (row) in
                        HStack(spacing: 5){
                            ForEach(0..<self.names[row].count){(col) in
                                Image(self.names[row][col])
                                .resizable()
                                .scaledToFill()
                                .frame(width: self.photoWidth, height: self.photoWidth )
                                .clipped()
                            }
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
                }
                Section(header: Text("Event")){
                    ForEach(0..<names2.count){ (row) in
                        HStack(spacing: 5){
                            ForEach(0..<self.names2[row].count){(col) in
                                Image(self.names2[row][col])
                                .resizable()
                                .scaledToFill()
                                .frame(width: self.photoWidth, height: self.photoWidth )
                                .clipped()
                            }
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
                }
            }.listRowInsets(EdgeInsets(top: 5, leading: 3, bottom: 0, trailing: 5))
            .onAppear{
                UITableView.appearance().separatorColor = .clear
            }
        }
    }
}

struct GridLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        GridLayoutView()
    }
}
