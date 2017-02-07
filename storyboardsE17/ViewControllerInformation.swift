//
//  ViewControllerInformation.swift
//  storyboardsE17
//
//  Created by alumno on 1/30/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerInformation: UIViewController {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbAncho: UILabel!
    @IBOutlet weak var lbAltura: UILabel!
    
    var imagen : UIImage!
    var ancho : CGFloat!
    var altura : CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgFoto.image = imagen
        lbAncho.text = String(describing: ancho!)
        lbAltura.text = String(describing: altura!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
