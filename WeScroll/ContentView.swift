//
//  ContentView.swift
//  WeScroll
//
//  Created by Trung Luu on 2/25/23.
//

import SwiftUI

struct ContentView: View {
    let letters = ["a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p"]
    
    var body: some View {
        VStack {
            //Vertical ScrollView with cyan and blue letter symbol
            ScrollView {
                ForEach(self.letters, id: \.self) { letter in
                    Image(systemName: letter)
                        .font(.largeTitle)
                        .foregroundColor(.cyan)
                        .frame(width: 50, height: 50)
                        .background(Color.blue)
                        .symbolVariant(.circle.fill)
                }
            }.frame(width: 50, height: 200)
            
            //Horizontal ScrollView with orange and red letter symbol
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.letters, id: \.self) { letter in
                        Image(systemName: letter).font(.largeTitle).foregroundColor(.orange).frame(width: 50, height: 50).background(Color.red).symbolVariant(.circle.fill)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
