//
//  SignUpViewController.swift
//  sample
//
//  Created by Suvesh Agnihotri on 02/08/2560 BE.
//  Copyright © 2560 BE Home. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField


class SignUpViewController: UIViewController {

    let datePicker = UIDatePicker()

    @IBOutlet weak var etGender: SkyFloatingLabelTextField!

    @IBOutlet weak var etEthnicity: SkyFloatingLabelTextField!
    @IBOutlet weak var etName: SkyFloatingLabelTextField!
    @IBOutlet weak var etDatePicker: SkyFloatingLabelTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        showDatePicker()
    }

    @IBAction func showGenderActionSheet(_ sender: AnyObject) {
        // 1
        let optionMenu = UIAlertController(title: nil, message: "Choose Gender", preferredStyle: .actionSheet)
        
        // 2
        let listItem1 = UIAlertAction(title: "Male", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.etGender.text = "Male"
        })
        let listItem2 = UIAlertAction(title: "Female", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.etGender.text = "Female"
        })
        
        //
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        
        // 4
        optionMenu.addAction(listItem1)
        optionMenu.addAction(listItem2)
        optionMenu.addAction(cancel)
        
        // 5
        self.present(optionMenu, animated: true, completion: nil)
    }
    @IBAction func showEthnicityActionSheet(_ sender: AnyObject) {
        // 1
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        // 2
        let listItem1 = UIAlertAction(title: "Listitem1", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.etEthnicity.text = "Listitem1"
        })
        let listItem2 = UIAlertAction(title: "listitm3", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.etEthnicity.text = "listitm3"
        })
        
        //
        let cancel = UIAlertAction(title: "listitem4", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        
        // 4
        optionMenu.addAction(listItem1)
        optionMenu.addAction(listItem2)
        optionMenu.addAction(cancel)
        
        // 5
        self.present(optionMenu, animated: true, completion: nil)
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
    
    func showDatePicker(){
        //Formate Date
        datePicker.datePickerMode = .date

        //ToolBar
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        //Setting Buttons in ActionSheet
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.bordered, target: self, action: "donedatePicker")
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItemStyle.bordered, target: self, action: "cancelDatePicker")
        toolbar.setItems([doneButton,spaceButton,cancelButton], animated: false)
        
        etDatePicker.inputAccessoryView = toolbar
        etDatePicker.inputView = datePicker
        
    }
    
    func donedatePicker(){
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        etDatePicker.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    func cancelDatePicker(){
        self.view.endEditing(true)
    }

}
