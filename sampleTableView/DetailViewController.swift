//
//  DetailViewController.swift
//  sampleTableView
//
//  Created by 今川博司 on 2018/01/19.
//  Copyright © 2018年 今川博司. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var passedIndex = -1
    
    @IBOutlet weak var teaName: UILabel!
    @IBOutlet weak var teaLeaf: UIImageView!
    @IBOutlet weak var teaDistrict: UIImageView!
    @IBOutlet weak var teaimg: UIImageView!
    @IBOutlet weak var detailExplain: UITextView!
    
    var teaList = ["ダージリン","アッサム","ウバ","ヌワラエリア","キーモン"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("渡された行番号は\(passedIndex)")
        detailExplain.isEditable = false
        switch passedIndex {
        case 0: do {
            teaName.text = "ダージリン"
            teaimg.image = UIImage(named:"darjiling1.jpg")
            teaDistrict.image = UIImage(named:"darjiling2.jpg")
            teaLeaf.image = UIImage(named:"darjiling3.jpg")
            detailExplain.text = "「紅茶のシャンパン」とも称されるダージリンは、水色は薄いながらも格別な香味をもっているため、世界三大紅茶のひとつとして数えられています。インドのダージリン地方は東ヒマラヤ山麓に位置し、茶樹は標高2,000mの高地から急峻な谷底に至る斜面に植えられています。日中の直射日光と夜間の低温による寒暖差で発生する霧が、独特の味と香りをつくり出す条件となっています。生産期は3～11月までで、そのシーズンによって味も香りも大きく違ってきます。"
            }
        case 1: do {
            teaName.text = "アッサム"
            teaimg.image = UIImage(named:"assam1.jpg")
            teaDistrict.image = UIImage(named:"assam2.jpg")
            teaLeaf.image = UIImage(named:"assam3.jpg")
            detailExplain.text = "北東インドのブラマプトラ河の両岸に広がるアッサム平原は、世界有数の雨量の多い土地であり、世界最大の紅茶産地です。4～5月に摘まれるファーストフラッシュから11月までの間が生産期です。甘みが強くコクのある味わいと濃い茶褐色の水色、芳醇な香りをもっています。ダージリンと同様、ファーストフラッシュは特徴が弱く、6～7月のセカンドフラッシュがアッサム特有のパンチの効いたコクと濃い水色をもち、最良品とされています。味わいが濃いため、特にミルクティーに向くとされています。"
            }
        case 2: do {
            teaName.text = "ウバ"
            teaimg.image = UIImage(named:"uva1.jpg")
            teaDistrict.image = UIImage(named:"uva2.jpg")
            teaLeaf.image = UIImage(named:"uva3.jpg")
            detailExplain.text = "世界三大紅茶のひとつに数えられている「ウバ」。スリランカ南東部にあるウバの高地は、日中の高温と夜間の冷気のために霧が発生しやすい土地で、これによってバラやスズランの花香（またはサロメチール様香気ともいう）の甘い刺激的な「ウバフレーバー」がつくり出され、特に珍重されて高値が付けられます。爽快な渋み、特有の香気とコク、明るい真紅色の水色が特徴です。クオリティーシーズンは7～9月。水色（ゴールデンリング）を楽しむため、ストレートティーがよいとされていますが、ミルクにもよく合います。"
            }
        case 3: do {
            teaName.text = "ヌワラエリア"
            teaimg.image = UIImage(named:"NuwaraEliya1.jpg")
            teaDistrict.image = UIImage(named:"NuwaraEliya2.jpg")
            teaLeaf.image = UIImage(named:"NuwaraEliya3.jpg")
            detailExplain.text = "スリランカを代表する紅茶の産地であるウバとは反対側に位置する最高地・ヌワラエリアで生産される銘茶です。水色は淡いオレンジ色で、緑茶に似た適度な渋みと優雅でデリケートな花香が特徴で、ストレートティーとして楽しむのが最適です。茶葉も緑がかっており、茶殻は緑茶のような色をしています。1～2月には最高級品が生産されます。"
            }
        case 4: do {
            teaName.text = "キーモン"
            teaimg.image = UIImage(named:"keemun1.jpg")
            teaDistrict.image = UIImage(named:"keemun2.jpg")
            teaLeaf.image = UIImage(named:"keemun3.jpg")
            detailExplain.text = "世界三大紅茶のひとつとして数えられている「キーモン（祁門）」。「キーマン」「キームン」と呼ばれることもあります。中国は上海の西に位置する安徽省祁門県で生産される古典的な紅茶で、紅茶のルーツが感じられます。生産時期が6～9月と短く、ごく少量しか採集されません。特に8月に摘まれるものに最高級品があり、ときには異常な高値が付くこともあります。蘭やバラに似た香りのほか、独特のスモーキーフレーバーは、いかにも東洋的。キーモンは、古くからイギリス人に珍重されてきました。葉の色は黒いのですが、澄んだ明るい水色が特徴的で、ストレートで飲むのに適しています。"
            }
        default: break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
}
