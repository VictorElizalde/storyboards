//
//  ViewControllerEditar.swift
//  storyboardsE17


import UIKit

class ViewControllerEditar: UIViewController {

    @IBOutlet weak var largoTF: UITextField!
    @IBOutlet weak var anchoTF: UITextField!
    @IBOutlet weak var alturaTF: UITextField!
    @IBOutlet weak var btCancelar: UIButton!
    @IBOutlet weak var btGuardar: UIButton!
    @IBOutlet weak var prismImage: UIImageView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if sender as! UIButton == btGuardar {
            
            let vistaInic = segue.destination as! ViewController
            vistaInic.image = prismImage.image
            vistaInic.largo = largoTF.text!
            vistaInic.ancho = anchoTF.text!
            vistaInic.altura = alturaTF.text!
            vistaInic.volume = String(Float(largoTF.text!)!*Float(anchoTF.text!)!*Float(alturaTF.text!)!)
            
        }
        
        // si se oprime cancelar no se hace nada
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if sender as? UIButton == btGuardar {
            
            if largoTF.text! == "" || anchoTF.text! == "" || alturaTF.text! == "" {
                
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
