//
//  SecondViewController.swift
//  Swift-Project
//
//  Created by Nathan Maillard on 24/02/2016.
//  Copyright © 2016 Nathan Maillard. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var headView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let gesture = UITapGestureRecognizer(target: self, action: "popupGG:")
        self.headView.addGestureRecognizer(gesture)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func popupGG(sender:UITapGestureRecognizer){
        let alert = UIAlertController(title: "Gagné", message: "GG", preferredStyle: .Alert)
            
        let firstAction = UIAlertAction(title: "Accueil", style: .Default) {
            (action) in
            if let navController = self.navigationController{
                navController.popViewControllerAnimated(true)
            }
        }
        
        
        alert.addAction(firstAction)
        presentViewController(alert, animated: true, completion:nil)
    }
    
}