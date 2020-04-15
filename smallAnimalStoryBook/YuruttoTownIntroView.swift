//
//  YuruttoTownIntroView.swift
//  smallAnimalStoryBook
//
//  Created by User06 on 2020/4/13.
//  Copyright © 2020 bc. All rights reserved.
//

import SwiftUI

struct YuruttoTownIntroView: View {
    var body: some View {
            VStack {
                Image("YuruttoTown")
                .resizable()
                .scaledToFit()
                    .navigationBarTitle(Text("愜意小鎮特展").font(Font.custom("jf-openhuninn-1.0", size: 22)), displayMode: .inline)
                
                Text("探P助與粉紅兔兔的日常生活\n\n")
                    .font(Font.custom("jf-openhuninn-1.0", size: 22))
                Spacer()
        }
    }
}

struct YuruttoTownIntroView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            YuruttoTownIntroView()
        }
    }
}
