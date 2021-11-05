//
//  ViewController.swift
//  JuegoInfantil
//
//  Created by APPS2M on 21/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var GAME_TITLE: UILabel!
    @IBOutlet weak var START_BUTTON_LABEL: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GAME_TITLE.text = "JUEGO INFANTIL"
        START_BUTTON_LABEL.setTitle("COMENZAR JUEGO", for: .normal)
    }

    @IBAction func startGame(_ sender: Any) {
        performSegue(withIdentifier: "GameView", sender: nil)
        //dismiss(animated: true, completion: nil)
    }
    

    
}

