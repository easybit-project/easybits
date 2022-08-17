//
//  ViewController.swift
//  easybits
//
//  Created by 양희원 on 2022/08/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func login(_ sender: UIButton) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "StartViewController") else {return}
                
                self.present(nextVC, animated: true)
        ///
    }
}

