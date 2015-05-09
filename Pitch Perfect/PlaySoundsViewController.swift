//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Jon Gordon on 08/05/2015.
//  Copyright (c) 2015 JonGor Software. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!

    @IBOutlet weak var stopButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var filePathUrl = receivedAudio.filePathUrl

        audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slowDown(sender: UIButton) {
        playAudio(0.5)
    }

    @IBAction func speedUp(sender: UIButton) {
        playAudio(2.0)
    }

    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }

    func playAudio(var rate: Float) {
        audioPlayer.stop()
        audioPlayer.rate = rate
        audioPlayer.play()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
