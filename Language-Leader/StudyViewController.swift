//
//  StudyViewController.swift
//  Language-Leader
//
//  Created by Daniela Bernal on 11/17/22.
//

import UIKit
import WDFlashCard
import Parse

class StudyViewController: UIViewController, WDFlashCardDelegate {

    

    @IBOutlet weak var toggleTapToFlipButton: UIButton!
    @IBOutlet weak var backView: UILabel!
    @IBOutlet weak var frontView: UILabel!
    @IBOutlet var flashCard: WDFlashCard!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        flashCard.duration = 2.0
//        flashCard.flipAnimation = .flipFromLeft
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func flipPressed(_ sender: Any) {
        flashCard.flip()
    }
    
    @IBAction func dissableTapToFlipPressed(_ sender: Any) {
        flashCard.disableTouchToFlipFesture = !flashCard.disableTouchToFlipFesture
        toggleTapToFlipButton.setTitle("\(flashCard.disableTouchToFlipFesture ? "Enable" : "Disable") tap to flip", for: .normal)
    }
    

    //MARK: WDFlashCardDelegate methods
    
    func flipBackView(forFlashCard flashCardView: WDFlashCard) -> UIView {
        return backView
    }
    
    func flipFrontView(forFlashCard flashCardView: WDFlashCard) -> UIView {
        return frontView
    }
    
    func flashCardWillFlip(forFlashCard flashCardView: WDFlashCard) {
        print("Flash card will flip")
    }
    
    func flashCardFlipped(forFlashCard flashCardView: WDFlashCard) {
        print("Flash card flipped")
    }
    
    
    @IBAction func onLogoutButton(_ sender: Any){
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(identifier: "LoginViewController")
        
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else { return }
        
        delegate.window?.rootViewController = loginViewController
        
    }
}
