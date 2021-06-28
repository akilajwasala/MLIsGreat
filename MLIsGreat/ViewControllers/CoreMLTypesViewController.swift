//
//  CoreMLTypesViewController.swift
//  MLIsGreat
//
//  Created by Akila on 2021-06-28.
//

import UIKit

class CoreMLTypesViewController: UIViewController {

    var selectedRequestType: RectanglesRequest = .all
    private let SegueShowCoreML = "showCoreMLStuff"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnSquaresClicked(_ sender: Any) {
        selectedRequestType = .rectangle
        performSegue(withIdentifier: SegueShowCoreML, sender: self)
    }
    
    @IBAction func btnFacesClicked(_ sender: Any) {
        selectedRequestType = .face
        performSegue(withIdentifier: SegueShowCoreML, sender: self)
    }
    
    @IBAction func btnTextsClicked(_ sender: UIButton) {
        selectedRequestType = .text
        performSegue(withIdentifier: SegueShowCoreML, sender: self)
    }
    
    @IBAction func btnAllClicked(_ sender: UIButton) {
        selectedRequestType = .all
        performSegue(withIdentifier: SegueShowCoreML, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == SegueShowCoreML) {
            let vc = segue.destination as! CoreMLViewController
            vc.requestType = selectedRequestType
        }
    }

}
