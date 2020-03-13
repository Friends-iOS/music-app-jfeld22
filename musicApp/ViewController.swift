//
//  ViewController.swift
//  musicApp
//
//  Created by Adam Jackrel on 2/28/20.
//  Copyright © 2020 Adam Jackrel. All rights reserved.
//

//GREAT DESIGN. LOVE THE COLOR CHOICES. -ADAM

import UIKit

import AVFoundation



class ViewController: UIViewController {

    

    var audioPlayer = AVAudioPlayer()



    override func viewDidLoad() {

        super.viewDidLoad()

    }

    

    func playSound(name : String) {

        let sound = Bundle.main.path(forResource: name, ofType: "mp3")

        do {

            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))

        }

        catch {

            print(error)

        }

        

        audioPlayer.play()

    }

    

    func changeOpacity(button: UIButton) {

        button.alpha = 0.5

        Thread.sleep(forTimeInterval: 2.0)

        button.alpha = 1

    }



    @IBAction func playC(_ sender: UIButton) {

        playSound(name : "c-4")

        changeOpacity(button: sender)

    }

    

    @IBAction func playD(_ sender: UIButton) {

        playSound(name : "d-4")

        changeOpacity(button: sender)

    }

    

    @IBAction func playE(_ sender: UIButton) {

        playSound(name : "e4")

        changeOpacity(button: sender)

    }

    

    @IBAction func playF(_ sender: UIButton) {

        playSound(name : "f-4")

        changeOpacity(button: sender)

    }

    

    @IBAction func playG(_ sender: UIButton) {

        playSound(name : "g-4")

        changeOpacity(button: sender)

    }

    

    @IBAction func playA(_ sender: UIButton) {

        playSound(name : "a-4")

        changeOpacity(button: sender)

    }

    

    @IBAction func playB(_ sender: UIButton) {

        playSound(name : "b4")

        changeOpacity(button: sender)

    }

}
