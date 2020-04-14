//
//  AppView.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("小鎮")
            }
            CharacterList()
                .tabItem{
                    Image(systemName: "person.2.fill")
                    Text("居民")
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color(hue: 0.975, saturation: 0.395, brightness: 0.958))
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
