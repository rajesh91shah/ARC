//
//  FirstViewController.swift
//  ARC
//
//  Created by Mac on 17/06/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

protocol FirstViewControllerDelegate {
    func firstViewController(_ viewController: FirstViewController, uiBUtton: UIButton)
}

class FirstViewController: UIViewController {

    var delegate: FirstViewControllerDelegate?
    
    @IBAction func back(_ sender: UIButton) {
        
        delegate?.firstViewController(self, uiBUtton: sender)
        navigationController?.popViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func nextViewController(_ sender: Any) {
        let sceVC = self.storyboard?.instantiateViewController(withIdentifier: "ScondViewController") as? ScondViewController
        sceVC?.delegate = self
        navigationController?.pushViewController(sceVC!, animated: true)
    }

}

extension FirstViewController: ScondViewControllerDelegate {
    func scondViewController(_ viewController: ScondViewController, uiBUtton: UIButton) {
        print("second delegate")
    }
}











