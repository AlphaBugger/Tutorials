//
//  ContentView.swift
//  Tutoriale
//
//  Created by Eduard Zepciuc on 10.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    var emojis = ["😃","😁","😅","🙃","😀","😄","😂","🤣","🥲","☺️","😊","😇","🙂","😉","😌","😍","🥰","😘","😗"]
    @State var cardCount = 10
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum:80))]){
                    ForEach(emojis[0..<cardCount], id: \.self) {emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
                
                .foregroundColor(.red)
            }
            
            .padding(.horizontal)
            .font(.largeTitle)
        }
        .padding(.horizontal)
        }
        
}


struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.blue)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)
            }else{
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
    }
}
