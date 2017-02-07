//
//  ViewControllerInformation.swift
//  storyboardsE17


import UIKit
import Darwin

class ViewControllerInformation: UIViewController {

    @IBOutlet weak var radiusTF: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var sphereImage: UIImageView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if sender as! UIButton == saveButton {
            
            let vistaInic = segue.destination as! ViewController
            vistaInic.image = sphereImage.image
            vistaInic.radius = radiusTF.text!
            vistaInic.volume = String(((4/3)*Float.pi)*(pow(Float(radiusTF.text!)!, 3)))
            
        }
        
        // si se oprime cancelar no se hace nada
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as? UIButton == saveButton {
            
            if radiusTF.text! == "" {
                
                let alerta = UIAlertController(title: "Error", message: "Los campos deben tener datos", preferredStyle: .alert)
                alerta.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                present(alerta, animated: true, completion: nil)
                return false
                
            }
            
        }
        return true
    }

    @IBAction func awayKeyboard(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
