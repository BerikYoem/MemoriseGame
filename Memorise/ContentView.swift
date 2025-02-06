//
//  ContentView.swift
//  Memorise
//
//  Created by Berik Yoem on 16/1/2025.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        HStack {
//            ZStack(content: {
//                RoundedRectangle(cornerRadius: 12)
//                    .foregroundColor(.white)
//                RoundedRectangle(cornerRadius: 12)
//                    .strokeBorder(lineWidth: 2)
//                
//                Text("👻").font(.largeTitle)
//            })
//            ZStack(content: {
//                RoundedRectangle(cornerRadius: 12)
//                    .foregroundColor(.white)
//                RoundedRectangle(cornerRadius: 12)
//                    .strokeBorder(lineWidth: 2)
//                
//                Text("👻").font(.largeTitle)
//            })
//            ZStack(content: {
//                RoundedRectangle(cornerRadius: 12)
//                    .foregroundColor(.white)
//                RoundedRectangle(cornerRadius: 12)
//                    .strokeBorder(lineWidth: 2)
//                
//                Text("👻").font(.largeTitle)
//            })
//            ZStack(content: {
//                RoundedRectangle(cornerRadius: 12)
//                    .foregroundColor(.white)
//                RoundedRectangle(cornerRadius: 12)
//                    .strokeBorder(lineWidth: 2)
//                
//                Text("👻").font(.largeTitle)
//            })
//        }
//        .foregroundColor(.orange)
//        .padding()
//    }
//}

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    //@State creates a pointer
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12 )
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
            }
        .onTapGesture {
            isFaceUp.toggle()       // same as the code below.
//            isFaceUp = !isFaceUp
        }
    }
}







#Preview {
    ContentView()
}
