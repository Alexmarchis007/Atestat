//
//  ViewController.swift
//  FirstPianoApp
//
//  Created by Alex on 28/03/2017.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import AVFoundation
import QuartzCore

var ButtonArray : [UIButton] = []

class ViewController: UIViewController {
    
    var variabila : [AVAudioPlayer] = []
    
    let pianoSoundC3 = Bundle.main.url(forResource: "DO1", withExtension: "mp3")!
    var audioPlayerC3 = AVAudioPlayer()
    
    let pianoSoundCS = Bundle.main.url(forResource: "DO#", withExtension: "mp3")!
    var audioPlayerCS = AVAudioPlayer()
    
    let pianoSoundD = Bundle.main.url(forResource: "RE", withExtension: "mp3")!
    var audioPlayerD = AVAudioPlayer()
    
    let pianoSoundDS = Bundle.main.url(forResource: "RE#", withExtension: "mp3")!
    var audioPlayerDS = AVAudioPlayer()
    
    let pianoSoundE = Bundle.main.url(forResource: "MI", withExtension: "mp3")!
    var audioPlayerE = AVAudioPlayer()
    
    let pianoSoundF = Bundle.main.url(forResource: "FA", withExtension: "mp3")!
    var audioPlayerF = AVAudioPlayer()
    
    let pianoSoundFS = Bundle.main.url(forResource: "FA#", withExtension: "mp3")!
    var audioPlayerFS = AVAudioPlayer()
    
    let pianoSoundG = Bundle.main.url(forResource: "SOL", withExtension: "mp3")!
    var audioPlayerG = AVAudioPlayer()
    
    let pianoSoundGS = Bundle.main.url(forResource: "SOL#", withExtension: "mp3")!
    var audioPlayerGS = AVAudioPlayer()
    
    let pianoSoundA = Bundle.main.url(forResource: "LA", withExtension: "mp3")!
    var audioPlayerA = AVAudioPlayer()
    
    let pianoSoundAS = Bundle.main.url(forResource: "LA#", withExtension: "mp3")!
    var audioPlayerAS = AVAudioPlayer()
    
    let pianoSoundB = Bundle.main.url(forResource: "SI", withExtension: "mp3")!
    var audioPlayerB = AVAudioPlayer()
    
    let pianoSoundC4 = Bundle.main.url(forResource: "DO2", withExtension: "mp3")!
    var audioPlayerC4 = AVAudioPlayer()
    


    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var C3: UIButton!
    @IBOutlet weak var D: UIButton!
    @IBOutlet weak var E: UIButton!
    @IBOutlet weak var F: UIButton!
    @IBOutlet weak var G: UIButton!
    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var B: UIButton!
    @IBOutlet weak var C4: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var DO1: UIButton!
    
    
    @IBAction func addButton(_ sender: Any) {
        let myArray=["Do1"]
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath(row: myArray.count-1, section: 0)], with: .automatic)
        tableView.endUpdates()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        C3.layer.borderWidth = 1.0
        C3.layer.borderColor = UIColor.black.cgColor
        
        D.layer.borderWidth = 1.0
        D.layer.borderColor = UIColor.black.cgColor
        
        E.layer.borderWidth = 1.0
        E.layer.borderColor = UIColor.black.cgColor
        
        F.layer.borderWidth = 1.0
        F.layer.borderColor = UIColor.black.cgColor
        
        G.layer.borderWidth = 1.0
        G.layer.borderColor = UIColor.black.cgColor
        
        A.layer.borderWidth = 1.0
        A.layer.borderColor = UIColor.black.cgColor
        
        B.layer.borderWidth = 1.0
        B.layer.borderColor = UIColor.black.cgColor
        
        C4.layer.borderWidth = 1.0
        C4.layer.borderColor = UIColor.black.cgColor
        
        do {
        try audioPlayerC3 = AVAudioPlayer(contentsOf: pianoSoundC3 as URL)
        audioPlayerC3.prepareToPlay()
        
        try audioPlayerCS = AVAudioPlayer(contentsOf: pianoSoundCS as URL)
        audioPlayerCS.prepareToPlay()
        
        try audioPlayerD = AVAudioPlayer(contentsOf: pianoSoundD as URL)
        audioPlayerD.prepareToPlay()
        
        try audioPlayerDS = AVAudioPlayer(contentsOf: pianoSoundDS as URL)
        audioPlayerDS.prepareToPlay()
        
        try audioPlayerE = AVAudioPlayer(contentsOf: pianoSoundE as URL)
        audioPlayerE.prepareToPlay()
        
        try audioPlayerF = AVAudioPlayer(contentsOf: pianoSoundF as URL)
        audioPlayerF.prepareToPlay()
        
        try audioPlayerFS = AVAudioPlayer(contentsOf: pianoSoundFS as URL)
        audioPlayerFS.prepareToPlay()
        
        try audioPlayerG = AVAudioPlayer(contentsOf: pianoSoundG as URL)
        audioPlayerG.prepareToPlay()
        
        try audioPlayerGS = AVAudioPlayer(contentsOf: pianoSoundGS as URL)
        audioPlayerGS.prepareToPlay()
        
        try audioPlayerA = AVAudioPlayer(contentsOf: pianoSoundA as URL)
        audioPlayerA.prepareToPlay()
        
        try audioPlayerAS = AVAudioPlayer(contentsOf: pianoSoundAS as URL)
        audioPlayerAS.prepareToPlay()
        
        try audioPlayerB = AVAudioPlayer(contentsOf: pianoSoundB as URL)
        audioPlayerB.prepareToPlay()
        
        try audioPlayerC4 = AVAudioPlayer(contentsOf: pianoSoundC4 as URL)
        audioPlayerC4.prepareToPlay()
        } catch {
            
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func C3(_ sender: UIButton) {
       audioPlayerC3.currentTime = 0
       audioPlayerC3.play()
       }
    
    @IBAction func CS(_ sender: UIButton) {
        audioPlayerCS.currentTime = 0
        audioPlayerCS.play()
        }
    
    @IBAction func D(_ sender: UIButton) {
        audioPlayerD.currentTime = 0
        audioPlayerD.play()
        }
    
    @IBAction func DS(_ sender: UIButton) {
        audioPlayerDS.currentTime = 0
        audioPlayerDS.play()
        }

    @IBAction func E(_ sender: UIButton) {
        audioPlayerE.currentTime = 0
        audioPlayerE.play()
        }
    
    @IBAction func F(_ sender: UIButton) {
        audioPlayerF.currentTime = 0
        audioPlayerF.play()
        }
    
    @IBAction func FS(_ sender: UIButton) {
        audioPlayerFS.currentTime = 0
        audioPlayerFS.play()
        }

    @IBAction func G(_ sender: UIButton) {
        audioPlayerG.currentTime = 0
        audioPlayerG.play()
        }

    @IBAction func GS(_ sender: UIButton) {
        audioPlayerGS.currentTime = 0
        audioPlayerGS.play()
        }

    @IBAction func A(_ sender: UIButton) {
        audioPlayerA.currentTime = 0
        audioPlayerA.play()
        }
    
    @IBAction func AS(_ sender: UIButton) {
        audioPlayerAS.currentTime = 0
        audioPlayerAS.play()
        }
    
    @IBAction func B(_ sender: UIButton) {
        audioPlayerB.currentTime = 0
        audioPlayerB.play()
        }
    
    @IBAction func C4(_ sender: UIButton) {
        audioPlayerC4.currentTime = 0
        audioPlayerC4.play()
        }
    
}



