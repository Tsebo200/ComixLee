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
        return PlayerUIView(frame: .zero)
    }
    func updateUIView(_ uiView: UIView, context: Context) {
        //Do nothing here
    }
}
    class PlayerUIView: UIView {
        private var playerLayer  = AVPlayerLayer()
        
        override init(frame: CGRect){
        super.init(frame: frame)
            
            //Load Miles (Asset)
            let fileUrl = Bundle.main.url(forResource: "Miles", withExtension: "mp4")!
            let playerItem = AVPlayerItem(url: fileUrl)
            
            // Setup Player
            let player = AVPlayer(playerItem: playerItem)
            playerLayer.player = player
            playerLayer.videoGravity = .resizeAspectFill
            layer.addSublayer(playerLayer)
            
            // Loop
            player.actionAtItemEnd = .none
            NotificationCenter.default.addObserver(self, selector: #selector(rewindVideo(notification:)), name:
                    .AVPlayerItemFailedToPlayToEndTime, object: player.currentItem)
            
            //Play
            player.play()
}
        @objc
        func rewindVideo(notification: Notification){
            playerLayer.player?.seek(to: .zero)
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
