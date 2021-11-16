//
//  GameViewController.swift
//  JuegoInfantil
//
//  Created by APPS2M on 21/10/21.
//

import UIKit

class GameViewController: UIViewController {
    
    // Se añaden variables para elegir una imagen aleatoria que representa una figura geometrica para la funcionalidad del videojuego
    var selectedShape = Int.random(in: 0...3) // Se elige un valor aleatorio entre 0 y 3 que representará una imagen
    let shapesImages: [UIImage] = [
        UIImage(named: "circleSmol")!,
        UIImage(named: "pentagonSmol")!,
        UIImage(named: "squareSmol")!,
        UIImage(named: "triangleSmol")!] // Se crea un array para almacenar las imágenes de las figuras geométricas
    // También se podría haber realizar en vez de con números enteros, con strings, aunque el código tendría más volumen
    // Se podría haber hecho algo similar seleccionando un valor aleatorio del array sin necesidad de utilizar un Int.random, con un randomElement()
    
    // Se añaden los eventos para los textos y botones del juego, de nuevo todo es para realizar la mayor parte de la app a través de código
    @IBOutlet weak var pointsCounter: UILabel! // Contador de puntos
    @IBOutlet weak var pauseButtonText: UIButton! // Botón de pausa/salir
    @IBOutlet var selectedShapeImageView: UIImageView! // Botón que representa la imagen aleatoria
    @IBOutlet var gameOption1_Image: UIButton! // Botón que representa una figura geométrica
    @IBOutlet var gameOption2_Image: UIButton! // Botón que representa una figura geométrica
    @IBOutlet var gameOption3_Image: UIButton! // Botón que representa una figura geométrica
    @IBOutlet var gameOption4_Image: UIButton! // Botón que representa una figura geométrica
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /**
     Al cargar la vista GameView se cargan las imágenes en los botones y se carga el texto
     */
    override func viewWillAppear(_ animated: Bool) {
        pointsCounter.text = "0" // Se establece 0 como valor en la puntuacion
        pauseButtonText.setTitle("SALIR", for: .normal) // Se establece el texto del botón de salida
        selectedShapeImageView.image = shapesImages[selectedShape] // Se carga la imagen aleatoria
        gameOption1_Image.setImage(UIImage(named: "circleSmol"), for: .normal) // Se carga el primer botón, en este caso, el círculo
        gameOption1_Image.tintColor = UIColor.red // Se establece el color rojo a este botón
        gameOption1_Image.setTitle("", for: .normal) // Se elimina cualquier tipo de texto al botón
        gameOption2_Image.setImage(UIImage(named: "pentagonSmol"), for: .normal) // Se carga el segundo botón, en este caso, el pentágono
        gameOption2_Image.tintColor = UIColor.green // Se establece el color verde a este botón
        gameOption2_Image.setTitle("", for: .normal) // Se elimina cualquier tipo de texto al botón
        gameOption3_Image.setImage(UIImage(named: "squareSmol"), for: .normal) // Se carga el tercer botón, en este caso, el cuadrado
        gameOption3_Image.tintColor = UIColor.blue // Se carga el color azul a este botón
        gameOption3_Image.setTitle("", for: .normal) // Se elimina cualquier tipo de texto al botón
        gameOption4_Image.setImage(UIImage(named: "triangleSmol"), for: .normal) // Se carga el cuarto botón y último botón, en este caso, el triángulo
        gameOption4_Image.tintColor = UIColor.orange // Se carga el color naranja a este botón
        gameOption4_Image.setTitle("", for: .normal) // Se elimina cualquier tipo de texto al botón
        
        }
    
    // Se añaden los eventos de los botones que representan las figuras geometricas y se les añade funcionalidad
    @IBAction func gameOption0(_ sender: Any) {
        gameFunc(value: 0)
    }
    @IBAction func gameOption1(_ sender: Any) {
        gameFunc(value: 1)
    }
    @IBAction func gameOption2(_ sender: Any) {
        gameFunc(value: 2)
    }
    @IBAction func gameOption3(_ sender: Any) {
        gameFunc(value: 3)
    }
    
    /**
     Botón para salir del juego, se vuelve a la vista principal View ya que esta no se cierra al cargar la vista del juego GameView
     */
    @IBAction func pauseButton(_ sender: Any) {
        self.dismiss(animated: true) // Cerrar vista actual
    }
    
    /**
     Función que se encarga de la funcionalidad del juego, al seleccionar un botón este tiene un valor (número entero) el cual se compara con el valor de la imagen aleatoria (que se selecciona en base a un número entero)
     Por ejemplo, selectedShape es un valor entero aleatorio, si selectedShape = 1 este es un pentágono, el número entero 1 es el valor que se ha establecido manualmente al botón que representa el pentágono.
     Param: value -> Número entero que se comparará con la figura geometrica actual.
     */
    func gameFunc(value: Int){
        let currentShape: Int = selectedShape; // Se almacena el valor de la figura geométrica actual
        if(selectedShape == value){ // Se compara la figura geométrica actual con el valor del botón pulsado
            pointsCounter.text = String((Int(pointsCounter.text!)! + 100)) // Se suman puntos si coincide el valor de la figura geométrica actual con la del botón pulsado
            repeat{ // Bucle repeat-while para seleccionar una nueva figura geométrica que no sea igual a la actual
                selectedShape = Int.random(in: 0...3)
            }while(selectedShape == currentShape)
            selectedShapeImageView.image = shapesImages[selectedShape] // Se carga la imagen de la nueva figura geométrica que tiene que seleccionar el usuario correctamente
        } else {
            pointsCounter.text = String((Int(pointsCounter.text!)! - 100)) // Se restan puntos si la figura geométrica actual no coincide con el botón pulsado
        }
    }
}

