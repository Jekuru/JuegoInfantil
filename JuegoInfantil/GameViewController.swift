//
//  GameViewController.swift
//  JuegoInfantil
//
//  Created by APPS2M on 21/10/21.
//

import UIKit

class GameViewController: UIViewController {
    
    var selectedShape = Int.random(in: 0...3)
    let shapesImages: [UIImage] = [
        UIImage(named: "circleSmol")!,
        UIImage(named: "pentagonSmol")!,
        UIImage(named: "squareSmol")!,
        UIImage(named: "triangleSmol")!,
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        pointsCounter.text = "0"
        pauseButtonText.setTitle("SALIR", for: .normal)
        selectedShapeImageView.image = shapesImages[selectedShape]
        gameOption1_Image.setImage(UIImage(named: "circleSmol"), for: .normal)
        gameOption1_Image.tintColor = UIColor.red
        gameOption1_Image.setTitle("", for: .normal)
        gameOption2_Image.setImage(UIImage(named: "pentagonSmol"), for: .normal)
        gameOption2_Image.tintColor = UIColor.green
        gameOption2_Image.setTitle("", for: .normal)
        gameOption3_Image.setImage(UIImage(named: "squareSmol"), for: .normal)
        gameOption3_Image.tintColor = UIColor.blue
        gameOption3_Image.setTitle("", for: .normal)
        gameOption4_Image.setImage(UIImage(named: "triangleSmol"), for: .normal)
        gameOption4_Image.tintColor = UIColor.orange
        gameOption4_Image.setTitle("", for: .normal)
        
        }
    
    @IBOutlet weak var pointsCounter: UILabel!
    @IBOutlet weak var pauseButtonText: UIButton!
    @IBOutlet var selectedShapeImageView: UIImageView!
    @IBOutlet var gameOption1_Image: UIButton!
    @IBOutlet var gameOption2_Image: UIButton!
    @IBOutlet var gameOption3_Image: UIButton!
    @IBOutlet var gameOption4_Image: UIButton!
    @IBAction func gameOption0(_ sender: Any) {
        let currentShape: Int = selectedShape;
        if(selectedShape == 0){
            pointsCounter.text = String((Int(pointsCounter.text!)! + 100))
            repeat{
                selectedShape = Int.random(in: 0...3)
            }while(selectedShape == currentShape)
            selectedShapeImageView.image = shapesImages[selectedShape]
        } else {
            pointsCounter.text = String((Int(pointsCounter.text!)! - 100))
        }
    }
    @IBAction func gameOption1(_ sender: Any) {
        let currentShape: Int = selectedShape;
        if(selectedShape == 1){
            pointsCounter.text = String((Int(pointsCounter.text!)! + 100))
            repeat{
                selectedShape = Int.random(in: 0...3)
            }while(selectedShape == currentShape)
            selectedShapeImageView.image = shapesImages[selectedShape]
        } else {
            pointsCounter.text = String((Int(pointsCounter.text!)! - 100))
        }
    }
    @IBAction func gameOption2(_ sender: Any) {
        let currentShape: Int = selectedShape;
        if(selectedShape == 2){
            pointsCounter.text = String((Int(pointsCounter.text!)! + 100))
            repeat{
                selectedShape = Int.random(in: 0...3)
            }while(selectedShape == currentShape)
            selectedShapeImageView.image = shapesImages[selectedShape]
        } else {
            pointsCounter.text = String((Int(pointsCounter.text!)! - 100))
        }
    }
    @IBAction func gameOption3(_ sender: Any) {
        let currentShape: Int = selectedShape;
        if(selectedShape == 3){
            pointsCounter.text = String((Int(pointsCounter.text!)! + 100))
            repeat{
                selectedShape = Int.random(in: 0...3)
            }while(selectedShape == currentShape)
            selectedShapeImageView.image = shapesImages[selectedShape]
        } else {
            pointsCounter.text = String((Int(pointsCounter.text!)! - 100))
        }
    }
    @IBAction func pauseButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

