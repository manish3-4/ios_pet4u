//
//  HomeViewController.swift
//  pet4u
//
//  Created by Student on 30/04/25.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let data = ["Maria", "Joyi", "Grace", "Fluffi", "Renon", "John"];
    var images = [UIImage(named: "cat"), UIImage(named: "cat1"), UIImage(named: "cat2"), UIImage(named: "dog"), UIImage(named: "dog1"), UIImage(named: "dog2")];
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    @IBOutlet weak var tb: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let c = tb.dequeueReusableCell(withIdentifier: "show", for: indexPath)
        c.textLabel?.text = data[indexPath.row]
        c.imageView?.image = images[indexPath.row]
        return c
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "**** Start Of Table ****"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "****** End Of Table ******"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Pet4u Store Home"
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var imgContact: UIImageView!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        lblname.text = "You have selected : " + data[indexPath.row]
        
        
        if indexPath.row == 0
        {
            imgContact.image = UIImage.cat
        }
        if indexPath.row == 1
        {
            imgContact.image = UIImage.cat1
        }
        if indexPath.row == 2
        {
            imgContact.image = UIImage.cat2
        }
        if indexPath.row == 3
        {
            imgContact.image = UIImage.dog
        }
        if indexPath.row == 4
        {
            imgContact.image = UIImage.dog1
        }
        if indexPath.row == 5
        {
            imgContact.image = UIImage.dog2
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
