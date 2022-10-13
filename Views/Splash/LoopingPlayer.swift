//
//  LoopingPlayer.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/13.
//

import SwiftUI

struct LoopingPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return PlayerUIView(frame: .zero)
    }
    func updateUIView(_ uiView: UIView, context: Context) {
        //Do nothing here
    }
}
    class PlayerUIView: UIView {
        override init(frame: CGRect){
        super.init(frame: frame)
}
required init?(coder: NSCoder){
    fatalError("init(coder:) has not been implemented")
}
}

struct LoopingPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LoopingPlayer()
    }
}
