//
//  CustomCell.swift
//  AkiosTask13
//
//  Created by Nekokichi on 2020/08/21.
//  Copyright © 2020 Nekokichi. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet private(set) weak var checkMarkImage: UIImageView!
    @IBOutlet private(set) weak var checkMarkLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(text:String, keyCheck:Bool) {
        //チェックマークの画像を表示
        if keyCheck {
            checkMarkImage.image = UIImage(systemName: "checkmark")
        }
        //チェックリストのテキストを表示
        checkMarkLabel.text = text
    }
    
}
