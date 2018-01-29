//
//  FirstViewController.swift
//  Proyecto-Restarurante
//
//  Created by Alejandro Sklar on 23/10/17.
//  Copyright © 2017 Alejandro Sklar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //con esto cambiamos el color de la barra de abajo
        self.tabBarController?.tabBar.barTintColor = UIColor (patternImage: UIImage(named: "patronColor")!)
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

