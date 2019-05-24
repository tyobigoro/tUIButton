//
//  ViewController.swift
//  tUIButton
//
//  Created by tyobigoro on 2019/05/23.
//  Copyright © 2019 tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        //tBtn.imageView?.contentMode = .scaleAspectFit
        //tBtn.contentHorizontalAlignment = .fill
        //tBtn.contentVerticalAlignment = .fill
    }
}

class CustomBtn: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
        // UIButtonサイズは width:44, height:30 に固定
        // UIButton配置は viewSafeAreaのHcenter/Vcenter
        // ここへの記述が的確なのか？
        self.imageView?.contentMode = .scaleAspectFit
        self.contentHorizontalAlignment = .fill
        self.contentVerticalAlignment = .fill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}
