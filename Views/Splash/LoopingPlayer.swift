//
//  LoopingPlayer.swift
//  ComixLee
//
//  Created by Tsebo Ramonyalioa on 2022/10/13.
//

import SwiftUI
import AVFoundation

struct LoopingPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return QueuePlayerUIView(frame: .zero)
    }
    func updateUIView(_ uiView: UIView, context: Context) {
        //Do nothing here
    }
}
    class QueuePlayerUIView: UIView {
        private var playerLayer  = AVPlayerLayer()
        private var playerlooper: AVPlayerLooper?
        
        override init(frame: CGRect){
        super.init(frame: frame)
            
            //Load Miles (Asset)
            let fileUrl = Bundle.main.url(forResource: "Miles", withExtension: "mp4")!
            let playerItem = AVPlayerItem(url: fileUrl)
            
            // Setup Player
            let player = AVQueuePlayer(playerItem: playerItem)
            playerLayer.player = player
            playerLayer.videoGravity = .resizeAspectFill
            layer.addSublayer(playerLayer)
            
            // Loop
//            playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
            
            //Play
            player.play()
}
        override func layoutSubviews() {
            super.layoutSubviews()
            playerLayer.frame = bounds
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
