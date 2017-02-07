//
//  ViewController.swift
//  storyboardsE17


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    
    var largo : String!
    var ancho : String!
    var altura : String!
    var radius : String!
    var image : UIImage!
    var volume : String!
    
    
    @IBAction func inicioButton(_ sender: UIButton) {
        
        imgFoto.image = UIImage(named: "cuerpos")
        infoLabel.text = ""
        volumeLabel.text = ""
        
    }
    
    @IBAction func unwindInformation(unwindSegue : UIStoryboardSegue) {
        
        infoLabel.text = "Radio = \(radius ?? "")"
        imgFoto.image = image
        volumeLabel.text = volume
        
    }

    
    @IBAction func unwindEditar(unwindSegue : UIStoryboardSegue) {
        
        infoLabel.text = "largo = \(largo ?? "")\nancho = \(ancho ?? "")\naltura = \(altura ?? "")"
        imgFoto.image = image
        volumeLabel.text = volume
        
    }
    

    @IBAction func awayKeyboard(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

