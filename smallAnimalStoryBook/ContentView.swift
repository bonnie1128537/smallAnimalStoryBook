//
//  ContentView.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
            Image("index")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
                VStack {
                Text("卡娜赫拉的小動物").font(Font.custom("jf-openhuninn-1.0", size: 35))
                    .foregroundColor(Color(hue: 0.975, saturation: 0.395, brightness: 0.958))
                Text("in").font(Font.custom("jf-openhuninn-1.0", size: 29))
                        .foregroundColor(Color(hue: 0.975, saturation: 0.395, brightness: 0.958))
                    NavigationLink(destination: YuruttoTownIntroView()) {
                        Text("愜意小鎮").font(Font.custom("jf-openhuninn-1.0", size: 29))
                    }
                    Spacer()
                }
            }
        }.navigationBarTitle("展覽介紹")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
