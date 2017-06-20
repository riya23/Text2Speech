//
//  ViewController.swift
//  Text2Speech
//
//  Created by Riya Ganguly on 19/06/17.
//  Copyright © 2017 Riya Ganguly. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var txtView: UITextView!
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Text2Speech"
//        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        navigationController?.navigationBar.tintColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
        txtView.layer.borderWidth = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        txtView.text = "Tell Something!!"
        
    }

    @IBAction func btnSpeechTapped(_ sender: UIButton) {
        myUtterance = AVSpeechUtterance(string: txtView.text)
        myUtterance.rate = AVSpeechUtteranceDefaultSpeechRate//0.5
        myUtterance.voice = AVSpeechSynthesisVoice(language: "en-gb")
        synth.speak(myUtterance)
    }
}

