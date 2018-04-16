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

var list = [String]()
var X = [Int]()



class SecondView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myArray = [String]()
    var stopped = false
    
    let pianoSoundC3 = Bundle.main.url(forResource: "DO1", withExtension: "mp3")!
    weak var audioPlayerC3: Sound!
    
    let pianoSoundCS = Bundle.main.url(forResource: "DO#", withExtension: "mp3")!
    weak var audioPlayerCS: Sound!
    
    let pianoSoundD = Bundle.main.url(forResource: "RE", withExtension: "mp3")!
    weak var audioPlayerD: Sound!
    
    let pianoSoundDS = Bundle.main.url(forResource: "RE#", withExtension: "mp3")!
    weak var audioPlayerDS: Sound!
    
    let pianoSoundE = Bundle.main.url(forResource: "MI", withExtension: "mp3")!
    weak var audioPlayerE: Sound!
    
    let pianoSoundF = Bundle.main.url(forResource: "FA", withExtension: "mp3")!
    weak var audioPlayerF: Sound!
    
    let pianoSoundFS = Bundle.main.url(forResource: "FA#", withExtension: "mp3")!
    weak var audioPlayerFS: Sound!
    
    let pianoSoundG = Bundle.main.url(forResource: "SOL", withExtension: "mp3")!
    weak var audioPlayerG: Sound!
    
    let pianoSoundGS = Bundle.main.url(forResource: "SOL#", withExtension: "mp3")!
    weak var audioPlayerGS: Sound!
    
    let pianoSoundA = Bundle.main.url(forResource: "LA", withExtension: "mp3")!
    weak var audioPlayerA: Sound!
    
    let pianoSoundAS = Bundle.main.url(forResource: "LA#", withExtension: "mp3")!
    weak var audioPlayerAS: Sound!
    
    let pianoSoundB = Bundle.main.url(forResource: "SI", withExtension: "mp3")!
    weak var audioPlayerB: Sound!
    
    let pianoSoundC4 = Bundle.main.url(forResource: "DO2", withExtension: "mp3")!
    weak var audioPlayerC4: Sound!
    
    @IBOutlet weak var myTableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(indexPath.row + 1) + " - " + list[indexPath.row] + "   seconds"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        if sourceIndexPath.row != destinationIndexPath.row {
            swap(&list[sourceIndexPath.row], &list[destinationIndexPath.row])
            tableView.reloadData()
        }
    }
    
    
    public func Scroll(){
        let numberOfSections = myTableView.numberOfSections
        let numberOfRows = myTableView.numberOfRows(inSection: numberOfSections-1)
        
        let indexPath = IndexPath(row: numberOfRows-1 , section: numberOfSections-1)
        myTableView.scrollToRow(at: indexPath, at: UITableViewScrollPosition.middle, animated: true)
        
        let x = numberOfRows
        X = [x];
        
        
    }
    
    
    @IBAction func C3(_ sender: UIButton) {
        audioPlayerC3?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("DO1 - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
    }
    
    @IBAction func CS(_ sender: UIButton) {
        audioPlayerCS?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("DO# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func D(_ sender: UIButton) {
        audioPlayerD?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("RE - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func DS(_ sender: UIButton) {
        audioPlayerDS?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("RE# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func E(_ sender: UIButton) {
        audioPlayerE?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("MI - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func F(_ sender: UIButton) {
        audioPlayerF?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("FA - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func FS(_ sender: UIButton) {
        audioPlayerFS?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("FA# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func G(_ sender: UIButton) {
        audioPlayerG?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("SOL - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func GS(_ sender: UIButton) {
        audioPlayerGS?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("SOL# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
    }
    
    @IBAction func A(_ sender: UIButton) {
        audioPlayerA?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("LA - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func AS(_ sender: UIButton) {
        audioPlayerAS?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("LA# - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func B(_ sender: UIButton) {
        audioPlayerB?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("SI - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    @IBAction func C4(_ sender: UIButton) {
        audioPlayerC4?.play()
        if sleepInterval.text  == "" {
            sleepInterval.text = "0"
        }
        list.append("DO2 - " + sleepInterval.text!)
        myTableView.reloadData()
        Scroll()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myTableView.flashScrollIndicators()
        myTableView.reloadData()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    @IBOutlet weak var DO1: UIButton!
    @IBOutlet weak var RE: UIButton!
    @IBOutlet weak var MI: UIButton!
    @IBOutlet weak var FA: UIButton!
    @IBOutlet weak var SOL: UIButton!
    @IBOutlet weak var LA: UIButton!
    @IBOutlet weak var SI: UIButton!
    @IBOutlet weak var DO2: UIButton!
    @IBOutlet weak var DOS: UIButton!
    @IBOutlet weak var RES: UIButton!
    @IBOutlet weak var FAS: UIButton!
    @IBOutlet weak var SOLS: UIButton!
    @IBOutlet weak var LAS: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
        
        DO1.layer.borderWidth = 1.0
        DO1.layer.borderColor = UIColor.purple.cgColor
        
        RE.layer.borderWidth = 1.0
        RE.layer.borderColor = UIColor.purple.cgColor
        
        MI.layer.borderWidth = 1.0
        MI.layer.borderColor = UIColor.purple.cgColor
        
        FA.layer.borderWidth = 1.0
        FA.layer.borderColor = UIColor.purple.cgColor
        
        SOL.layer.borderWidth = 1.0
        SOL.layer.borderColor = UIColor.purple.cgColor
        
        LA.layer.borderWidth = 1.0
        LA.layer.borderColor = UIColor.purple.cgColor
        
        SI.layer.borderWidth = 1.0
        SI.layer.borderColor = UIColor.purple.cgColor
        
        DO2.layer.borderWidth = 1.0
        DO2.layer.borderColor = UIColor.purple.cgColor
        
        DOS.layer.borderWidth = 1.0
        DOS.layer.borderColor = UIColor.purple.cgColor
        
        RES.layer.borderWidth = 1.0
        RES.layer.borderColor = UIColor.purple.cgColor
        
        FAS.layer.borderWidth = 1.0
        FAS.layer.borderColor = UIColor.purple.cgColor
        
        SOLS.layer.borderWidth = 1.0
        SOLS.layer.borderColor = UIColor.purple.cgColor
        
        LAS.layer.borderWidth = 1.0
        LAS.layer.borderColor = UIColor.purple.cgColor
        
        Sound.enabled = true
        Sound.playersPerSound = 10
        
        audioPlayerC3 = Sound(url: pianoSoundC3)
        audioPlayerCS = Sound(url: pianoSoundCS)
        audioPlayerD  = Sound(url: pianoSoundD)
        audioPlayerDS = Sound(url: pianoSoundDS)
        audioPlayerE  = Sound(url: pianoSoundE)
        audioPlayerF  = Sound(url: pianoSoundF)
        audioPlayerFS = Sound(url: pianoSoundFS)
        audioPlayerG  = Sound(url: pianoSoundG)
        audioPlayerGS = Sound(url: pianoSoundGS)
        audioPlayerA  = Sound(url: pianoSoundA)
        audioPlayerAS = Sound(url: pianoSoundAS)
        audioPlayerB  = Sound(url: pianoSoundB)
        audioPlayerC4 = Sound(url: pianoSoundC4)
        
        myTableView.setEditing(true, animated: true)
    }
    
    func dismissKeyboard() {
    //Causes the view (or one of its embedded text fields) to resign the first responder status.
    view.endEditing(true)
    }

    
    @IBAction func clearTable(_ sender: Any) {
        list.removeAll()
        myTableView.reloadData()
        
    }
    
    @IBOutlet var sleepInterval: UITextField!
    
    @IBAction func PlaySounds(_ sender: UIButton) {
       
        if list.count > 0 {
            
            for i in 0 ..< list.count {
                var soundSplit = list[i].components(separatedBy: " - ")
                switch soundSplit[0] {
                case "DO1":
                    audioPlayerC3?.play()
                case "DO#":
                    audioPlayerCS?.play()
                case "RE":
                    audioPlayerD?.play()
                case "RE#":
                    audioPlayerDS?.play()
                case "MI":
                    audioPlayerE?.play()
                case "FA":
                    audioPlayerF?.play()
                case "FA#":
                    audioPlayerFS?.play()
                case "SOL" :
                    audioPlayerG?.play()
                case "SOL#":
                    audioPlayerGS?.play()
                case "LA":
                    audioPlayerA?.play()
                case "LA#":
                    audioPlayerAS?.play()
                case "SI":
                    audioPlayerB?.play()
                case "DO2":
                    audioPlayerC4?.play()
                default:
                    print("None")
                }
                soundSplit[1] = soundSplit[1].replacingOccurrences(of: ",", with: ".")
                let sleep = suseconds_t(Float(soundSplit[1])! * 1000000)
                
                usleep(useconds_t(sleep))
            }
         }
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


