//
//  ViewController.swift
//  homeWork_3
//
//  Created by Амиргали Туралинов on 27.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        let window = UIApplication.shared.windows.first {
            $0.isKeyWindow
        }
        
        // Получили инстанст контроллера
        if let vc: UIViewController = UIStoryboard(name: "tabBar", bundle: nil).instantiateInitialViewController() {
            window?.rootViewController = vc
        }
        
    }
    
}

