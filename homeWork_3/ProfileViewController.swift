//
//  ProfileViewController.swift
//  homeWork_3
//
//  Created by Амиргали Туралинов on 28.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var logout: LogoutButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        logout.setTitle("Log Out", for: .normal)
        logout.setTitleColor(.white, for: .normal)
        logout.backgroundColor = .blue
        logout.layer.cornerRadius = 9
    }
    
    @IBAction func pushLogout(_ sender: Any) {
        
        
        let window = UIApplication.shared.windows.first {
            $0.isKeyWindow
        }
        
        // Получили инстанст контроллера
        if let vc: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() {
            window?.rootViewController = vc
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
