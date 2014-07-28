//
//  ViewController.swift
//  SoundBoard
//
//  Created by Kenny Friedman on 7/16/14.
//  Copyright (c) 2014 Kenneth Friedman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	var player : AVAudioPlayer! = nil
	
	@IBAction func playSubtle(sender: AnyObject) {
		
		let path = NSBundle.mainBundle().pathForResource("colbertSubtleVideo", ofType:"wav")
		let fileURL = NSURL(fileURLWithPath: path)
		player = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
		player.prepareToPlay()
		player.play()
	}

}

