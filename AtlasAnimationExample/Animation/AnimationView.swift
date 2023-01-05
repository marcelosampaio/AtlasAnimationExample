//
//  AnimationView.swift
//  AtlasAnimationExample
//
//  Created by Marcelo Sampaio on 05/01/23.
//

import SwiftUI

struct AnimationView: View {
    @ObservedObject var viewModel: AnimationViewModel
    
    @State var currentDate = Date.now
    @State var index = 0
    let timer = Timer.publish(every: 0.15, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ForEach((1...8), id: \.self) {_ in
                HStack {
                    ForEach((1...7), id: \.self) {_ in
                        Image(viewModel.images[index])
                    }
                }
            }
            
            
            
            Text("legend to index: \(index)")
        }
        .onReceive(timer) { input in
            currentDate = input
            if index < $viewModel.images.count - 1 {
                index += 1
            } else {
                index = 0
            }
            print("timer: \(timer)")
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView(viewModel: AnimationViewModel())
    }
}
