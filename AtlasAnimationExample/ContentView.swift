//
//  ContentView.swift
//  AtlasAnimationExample
//
//  Created by Marcelo Sampaio on 05/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AnimationView(viewModel: AnimationViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
