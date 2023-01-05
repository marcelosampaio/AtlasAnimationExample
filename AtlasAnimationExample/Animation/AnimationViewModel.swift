//
//  AnimationViewModel.swift
//  AtlasAnimationExample
//
//  Created by Marcelo Sampaio on 05/01/23.
//

import SwiftUI
import Combine

class AnimationViewModel: ObservableObject {
    @Published var images = ["img1", "img2", "img3", "img4", "img5"]
    @Published var currentDate = Date.now
    @Published var index = 0
//    @Published var timer = Timer.publish(every: 0.15, on: .main, in: .common).autoconnect()

}

