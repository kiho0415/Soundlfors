//
//  ViewController.swift
//  Soundlfors
//
//  Created by 森田貴帆 on 2020/09/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var cymbalButton: UIButton!

    let drumsoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let guitarsoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    let pianosoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let cymbalsoundplayer = try! AVAudioPlayer(data: NSDataAsset(name: "symbal")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tdowndrum(){
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumsoundplayer.currentTime = 0
        drumsoundplayer.play()
    }
    @IBAction func tupdrum(){
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func tdownguitar(){
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarsoundplayer.currentTime = 0
        guitarsoundplayer.play()
    }
    @IBAction func tupguitar(){
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    @IBAction func tdownpiano(){
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianosoundplayer.currentTime = 0
        pianosoundplayer.play()
    }
    @IBAction func tuppiano(){
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    @IBAction func tdowncymbal(){
        cymbalButton.setImage(UIImage(named: "cymbalPlayingImage"), for: .normal)
        cymbalsoundplayer.currentTime = 0
        cymbalsoundplayer.play()
    }
    @IBAction func tupcymbal(){
        cymbalButton.setImage(UIImage(named: "cymbalImage"), for: .normal)

    }
}

