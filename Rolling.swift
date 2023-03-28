//
//  Rolling.swift
//  roulette
//
//  Created by hyunjun kim on 2023/03/27.
//

import SwiftUI

struct Rolling: View {
    
    var font: Font = .largeTitle
    var emoji = ["😀", "😁", "😂", "🤣", "😄", "😅", "😆", "😉", "😊"]
    
    @Binding var animate : Bool
    
    var body: some View {
        HStack(spacing:0) {
            Text("0")
                .padding()
                .font(font)
                .opacity(0)
                .overlay {
                    GeometryReader { proxy in
                        let size = proxy.size
                        VStack(spacing:0){
                            ForEach(emoji, id: \.self) { i in
                                Text(i)
                                    .font(font)
                                    .frame(width: size.width, height: size.height, alignment: .center)
                            }
                        }
                        .offset(y: animate ? -8 * size.height : 0)
                        .animation(.spring(response: .random(in: 1...3),dampingFraction: 0.8, blendDuration: 0.8), value: animate)
                            }
                        }
                    }
        .clipped()

                }
            
        }


//landscapeView
struct Rolling_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeRight)
    }
}
