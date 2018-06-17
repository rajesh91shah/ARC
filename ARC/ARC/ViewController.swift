//
//  ViewController.swift
//  ARC
//
//  Created by Mac on 17/06/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FirstViewControllerDelegate {

    @IBAction func nextButtonTapped(_ sender: Any) {
        let storyBOard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBOard.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController
        vc?.delegate = self
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func firstViewController(_ viewController: FirstViewController, uiBUtton: UIButton) {
        print("first VC ")
    }

}

