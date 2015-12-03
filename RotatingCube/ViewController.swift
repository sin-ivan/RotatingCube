//
//  ViewController.swift
//  RotatingCube
//
//  Created by Ivan Sinitsa on 6/9/15.
//  Copyright © 2015 Ivan Sinitsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeColorButton : UIButton?
    @IBOutlet weak var mapButton : UIButton?
    
    let cubeVC : CubeViewController = CubeViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        drawCubeVC()
        
        self.view.bringSubviewToFront(changeColorButton!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func drawCubeVC()
    {
        self.addChildViewController(cubeVC)
        self.view.addSubview(cubeVC.view)
        self.cubeVC.didMoveToParentViewController(self)
    }
    
    @IBAction func payButtonAction() {
        self.cubeVC.payActionSuccess()
    }


}

