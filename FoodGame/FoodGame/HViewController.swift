//
//  HViewController.swift
//  FoodGame
//
//  Created by Phantom on 12/9/22.
//

import UIKit
import Parse

class HViewController: UIViewController {
    
    @IBOutlet weak var hrand: UIImageView!
    
    
    let foodArray = ["h1", "h2", "h3", "h4", "dice5", "dice6", ]
    
    
    var randomFoodIndex1 : Int = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
//    @objc func loadOptions(){
//
//        numberOfTweet = 20
//        let myUrl = "https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972"
//        let myParams = ["count": numberOfTweet]
//
//        TwitterAPICaller.client?.getDictionariesRequest(url: myUrl, parameters: myParams, success: { (tweets: [NSDictionary]) in
//
//            //cleanup data befor the code bekow this other code below
//            self.tweetArray.removeAll()
//            //add tweets in the tweetArray created above
//            for tweet in tweets {
//                self.tweetArray.append(tweet)
//            }
//
//            self.tableView.reloadData()
//            //to stop refreshing
//            self.myRefreshControl.endRefreshing()
//
//        }, failure: { (Error) in
//            print("Unable to Tweet! :(")
//        })
//    }
    
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name:"Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,let delegate = windowScene.delegate as? SceneDelegate else {return }
        delegate.window?.rootViewController = loginViewController
    }
    
    func updateFoodImages() {
     
        
        randomFoodIndex1 = Int(arc4random_uniform(4))

        
        print(randomFoodIndex1)
        
        hrand.image = UIImage(named: foodArray[randomFoodIndex1])

   
        
    }
    
    

    
    @IBAction func tabb(_ sender: Any) {
        updateFoodImages()
    }
    

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            updateFoodImages()
            
            
        }
        
    }
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name:"Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,let delegate = windowScene.delegate as? SceneDelegate else {return }
        delegate.window?.rootViewController = loginViewController
    }
    
    @IBAction func reviews(_ sender: Any) {
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
