//
//  ContentView.swift
//  Memorize Game
//
//  Created by mac on 2/4/22.
//

import SwiftUI

struct ContentView: View {
    var emojin: Array = emojin[24]
    var body: some View {
        HStack {
            CardView(content: emojin[0] )
            CardView(content: emojin[1] )
            CardView(content: emojin[2] )
            CardView(content: emojin[3] )
        }
        .padding(.horizontal)
        .foregroundColor(.red)
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
                shape.stroke(lineWidth: 3)
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
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}

