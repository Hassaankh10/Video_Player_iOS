//
//  ViewController.swift
//  Video_player_iOS
//
//  Created by Muhammad hassaan Khan on 23/06/2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playvideo();
    }
    private func playvideo(){
        guard let
                path=Bundle.main.path(forResource: "3195394-uhd_3840_2160_25fps", ofType: "mp4") else {
            debugPrint("Unable to find specified video")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player=player
        present(playerController, animated: true){
            player.play()
        }
    }
}
