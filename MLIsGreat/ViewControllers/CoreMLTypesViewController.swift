//
//  CoreMLTypesViewController.swift
//  MLIsGreat
//
//  Created by Akila on 2021-06-28.
//

import UIKit

class CoreMLTypesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnSquaresClicked(_ sender: Any) {
        performSegue(withIdentifier: "showCoreMLStuff", sender: nil)
    }
    
    @IBAction func btnFacesClicked(_ sender: Any) {
        
    }
    
    @IBAction func btnTextsClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func btnAllClicked(_ sender: UIButton) {
        
    }
}
