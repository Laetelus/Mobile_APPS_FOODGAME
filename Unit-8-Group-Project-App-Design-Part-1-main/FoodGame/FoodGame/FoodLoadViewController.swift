//
//  FoodLoadViewController.swift
//  FoodGame
//
//  Created by Phantom on 12/3/22.
//

import UIKit

class FoodLoadViewController: UIViewController {
    
    @IBOutlet weak var randone: UIImageView!
    @IBOutlet weak var randtwo: UIImageView!
    @IBOutlet weak var randthree: UIImageView!
    @IBOutlet weak var randfour: UIImageView!
    
    let foodArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6", ]
    
    
    var randomFoodIndex1 : Int = 0
    var randomFoodIndex2 : Int = 0
    var randomFoodIndex3 : Int = 0
    var randomFoodIndex4 : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    @IBOutlet weak var diceImageView1: UIImageView!
//    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    func updateFoodImages() {
     
        
        randomFoodIndex1 = Int(arc4random_uniform(6))
        randomFoodIndex2 = Int(arc4random_uniform(6))
        
        print(randomFoodIndex1)
        
        randone.image = UIImage(named: foodArray[randomFoodIndex1])
        randtwo.image = UIImage(named: foodArray[randomFoodIndex2])
        randthree.image = UIImage(named: foodArray[randomFoodIndex3])
        randfour.image = UIImage(named: foodArray[randomFoodIndex4])
        
        
    }
    
    
    @IBAction func tab(_ sender: Any) {
        updateFoodImages()
    }
    
    

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            updateFoodImages()
            
            
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
