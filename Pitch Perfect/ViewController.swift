//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Jon Gordon on 06/05/2015.
//  Copyright (c) 2015 JonGor Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(sender: UIButton) {
        // Show text saying "recording in progress"
        recordingInProgress.hidden = false

        // TODO: Record the user's voice
        println("in recordAudio")
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
    }
}

