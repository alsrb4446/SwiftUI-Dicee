//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by 신민규 on 2021/04/10.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumver = 1
    @State var rightDiceNumver = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                    .padding()
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumver)
                    DiceView(n: rightDiceNumver)
                }.padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumver = Int.random(in: 1...6)
                    rightDiceNumver = Int.random(in: 1...6)
                } ) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                }.background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
