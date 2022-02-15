//
//  ContentView.swift
//  Memorize Game
//
//  Created by mac on 2/4/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["G", "a", "b", "c", "d", "e", "f", "g", "i", "k", "l", "m", "o", "p", "z", "q"]
    //["🚗", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🚚", "🚛", "🚜", "🛺", "🚔", "🚔", "🚍", "🚲", "🚖", "🚟", "🚞", "✈️"]
    //["G", "a", "b", "c", "d", "e"]
 @State var emojicount = 15
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach (emojis[0..<emojicount], id: \.self)
                    { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3,contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
        .padding(.horizontal)
        }
    }
}


struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }
            else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
        
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
        ContentView()
            .preferredColorScheme(.light)
    }
}

