//
//  SignUpViewController.swift
//  Talk
//
//  Created by Phuoc on 3/23/17.
//  Copyright © 2017 ProjectLA. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var verifyPasswordField: UITextField!

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var genderPicker: UIPickerView!
    var Array = ["None","Male","Female"]
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //    picker.delegate = self
        genderPicker.delegate = self
        genderPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectButton(_ sender: Any) {
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage{
            self.imageView.image = image
            nextButton.isHidden = false
        }
        
        self.dismiss(animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        
        
        
        
    }
 
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
}
