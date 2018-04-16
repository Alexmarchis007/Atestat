//
//  ViewController.swift
//  NewAudioKit
//
//  Created by Alex on 08/03/2017.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController, AKKeyboardDelegate {
    let bank = AKOscillatorBank()
    var sounds = AKOscillatorBank()
  
    let oscillator = AKOscillator()



    @IBOutlet weak var lbl: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var mixtSound = ["a.wav", "b.wav", "bb.wav", "c.wav", "cc.wav", "d.wav", "e.wav", "eb.wav", "f.wav", "ff.wav","g.wav","gg.wav"]
//        let i = 0
//        for i in 1...mixtSound.count{
//            sounds = mixtSound[i]
//        }
        var frequency = 0
        oscillator.frequency = 250
        AudioKit.output = bank
        AudioKit.start()
        frequency  = Int(oscillator.frequency)
        
        let keyboard = AKKeyboardView(width: 440, height: 100)
        keyboard.polyphonicMode = true
        keyboard.delegate = self
        var newView = UIView()
        newView = keyboard
        newView.backgroundColor = UIColor.red
        newView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView)
        
//        let views = ["view": view, "newView": newView]
//        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[view]-(<=0)-[newView(300)]", options: NSLayoutFormatOptions.alignAllCenterY, metrics: nil, views: views)
//        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[view]-(<=0)-[newView(99)]", options: NSLayoutFormatOptions.alignAllCenterX, metrics: nil, views: views)
//        
//        view.addConstraints(horizontalConstraints)
//        view.addConstraints(verticalConstraints)
//
//        self.view.addSubview(keyboard)
        // Do any additional setup after loading the view, typically from a nib.
       /* let oscillator = AKOscillator()
        
        let envelope = AKAmplitudeEnvelope(oscillator)
        envelope.attackDuration = 0.01
        envelope.decayDuration = 0.1
        envelope.sustainLevel = 0.1
        envelope.releaseDuration = 0.3
        
        AudioKit.output = envelope
        AudioKit.start()
        
        oscillator.start()
        
        while(true) {
            if (envelope.isStarted) {
                envelope.stop()
            } else {
                envelope.start()
            }
            sleep(1)
        }
 */
    }
    @IBAction func Slider(_ sender: UISlider) {
        lbl.text = String(Int(sender.value))
        //oscillator.frequecy = String(Int(sender.value))
        
    }

    
    func noteOn(note: MIDINoteNumber) {
        bank.play(noteNumber: note, velocity: 80)
    }
    
    func noteOff(note: MIDINoteNumber) {
        bank.stop(noteNumber: note)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

