//
//  ScondViewController.swift
//  ARC
//
//  Created by Mac on 17/06/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

protocol ScondViewControllerDelegate {
    func scondViewController(_ viewController: ScondViewController, uiBUtton: UIButton)
}

class ScondViewController: UIViewController, ThirdViewControllerDelegate {
    
    weak var thirdVC: ThirdViewController?
    var delegate: ScondViewControllerDelegate?
    @IBAction func backButtonTapped(_ sender: Any) {
        delegate?.scondViewController(self, uiBUtton: (sender as? UIButton)!)
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func NextViewController(_ sender: Any) {
        let third = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        third?.delegate = self
        
        navigationController?.pushViewController(third!, animated: true)
    }
    
    func thirdViewController(_ viewController: ThirdViewController, uiBUtton: UIButton) {
        thirdVC = viewController
        print("thir delegate")
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
