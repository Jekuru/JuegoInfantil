//
//  ViewController.swift
//  JuegoInfantil
//
//  Created by APPS2M on 21/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Se añaden los eventos para posteriormente cambiar el texto del título y el botón para comenzar partida
    @IBOutlet weak var GAME_TITLE: UILabel! // Título
    @IBOutlet weak var START_BUTTON_LABEL: UIButton! // Botón para comenzar partida y cambiar vista
    
    /**
     Al cargar la vista ViewController se establece el texto de los elementos
     Se podrían haber establecido el texto del UILabel y UIButton directamente en el Main.storyboard, pero he optado a realizar la mayor parte de la app por código
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GAME_TITLE.text = "JUEGO INFANTIL" // Se añade texto al título del juego
        START_BUTTON_LABEL.setTitle("COMENZAR JUEGO", for: .normal) // Se añade texto al botón de inicio del juego
    }

    /**
     Cambia la vista a GameView al pulsar el botón de comenzar partida
     */
    @IBAction func startGame(_ sender: Any) {
        performSegue(withIdentifier: "GameView", sender: nil) // Cambiar vista a GameView
    }
}
