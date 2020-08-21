//
//  ViewController.swift
//  AkiosTask13
//
//  Created by Nekokichi on 2020/08/21.
//  Copyright © 2020 Nekokichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet private weak var checkListTableView: UITableView!
    
    //チェックリスト（タプルの配列）
    private(set) var checkList = [(text:"リンゴ",keyCheck:false),
                                  (text:"オレンジ",keyCheck:true),
                                  (text:"バナナ",keyCheck:false),
                                  (text:"パイナップル",keyCheck:true)]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //checkListTableViewの設定
        checkListTableView.delegate   = self
        checkListTableView.dataSource = self
        checkListTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "customcell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //CustomCellを生成
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! CustomCell
        
        //CustomCell内のUIに値を入れる
        cell.configure(text: checkList[indexPath.row].text, keyCheck: checkList[indexPath.row].keyCheck)
        
        return cell
    }

}

