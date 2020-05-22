//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Ahmed Eid on 5/22/20.
//  Copyright © 2020 Ahmed Eid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // @State wrapper property make we able to change stack
    // properities and SwiftUI put these properties in list and
    // wait it for any changes for updating ui
    @State var leftDiceeNumber: Int = 1
    @State var rightDiceeNumber: Int = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceeNumber)
                    DiceView(n: rightDiceeNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceeNumber = Int.random(in: 1...6)
                    self.rightDiceeNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


