//
//  CharacterList.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(characters.indices){(item) in
                    NavigationLink(destination: CharacterDetail(character: characters[item])){
                        CharacterRow(character: characters[item])
                    }
                }
                .listRowInsets(EdgeInsets())
                .navigationBarTitle("角色介紹")
            }
        }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}
