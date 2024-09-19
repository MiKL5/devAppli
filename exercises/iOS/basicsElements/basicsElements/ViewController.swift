//
//  ViewController.swift
//  basicsElements
//
//  Created by Mickael on 15/09/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var headerView: UIView! // Les outlets sont toujours faibles 'weak' car avec 'strong' il supprime les données quand il n'y a plus de place
    @IBOutlet weak var roundedView: UIView! // Attn aux outlet mal connectés
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var marmotView: UIImageView!
    @IBOutlet weak var sysIV: UIImageView!
    
    @IBOutlet var bottomButtons: [UIStackView]!
    
    var text = "Il est attaché au contrôler de la vue."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.label // noire, blanche en dark mode
        //view.backgroundColor = UIColor.systemBackground // en fonction du dark ou light mode
        view.backgroundColor = UIColor(red: 120/255, green: 23/255, blue: 200/255, alpha: 0.95)
        headerView.backgroundColor = .systemYellow
        roundedView.backgroundColor = .systemBrown
        topLabel.text = text
        topLabel.textColor = .systemPurple
        topLabel.numberOfLines = 1
//        topLabel.textAlignment = NSTextAlignment.center
        topLabel.textAlignment = .center
//        topLabel.font = .boldSystemFont(ofSize: 25)
        
        roundedView.layer.cornerRadius = roundedView.frame.height/2 // en cercle
        headerView.layer.shadowColor = UIColor.secondarySystemBackground.cgColor // == core graphic color
        headerView.layer.shadowOffset = CGSize(width: 6, height: 6)
        headerView.layer.shadowOpacity = 0.75
        headerView.layer.shadowRadius = 2
        headerView.layer.cornerRadius = 8
        
//        roundedView.layer.shadowColor = UIColor.secondarySystemBackground.cgColor
//        roundedView.layer.shadowOffset = CGSize(width: 2, height: 2)
//        roundedView.layer.shadowOpacity = 0.75
//        headerView.layer.shadowRadius = 2
        
        marmotView.layer.cornerRadius = 33
//        marmotView.image = UIImage(named: "pexels-zett-foto-194587-672142")
        
        sysIV.image = UIImage(systemName: "paperplane.fill")
        
       /* for index in 0..<bottomButtons.count {
            bottomButtons[index].setTitle("Bouton \(index)", for: .normal) // noormal = tout le temps
        }*/
    }
}
