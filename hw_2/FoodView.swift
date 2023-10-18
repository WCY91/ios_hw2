//
//  FoodView.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//

import Foundation
import CoreLocation
import SwiftUI


struct FoodsView: View {
    let foods = [
        Food(id: 1, name: "木童咖啡", description: "新北三重咖啡 / 輕食 / 早午餐 / 下午茶 / 繪本閱讀空間 還記得那些年的床邊故事嗎？『繪本』，一個讓小孩探索成長、大人尋找溫暖的讀物，來木童給自己一杯咖啡的繪本時光。", images: ["木童","木童２","木童３","木童４","木童５","木童６"],location: CLLocationCoordinate2D(latitude: 25.07102072961286, longitude:  121.49699058877049),phoneNumber: "0978-605-509",url: "https://www.youtube.com/watch?v=wPNKG_FCVbg"),
        Food(id: 2, name: "白糖粿", description: "原本在三重文化北路的『【萬】白糖粿. 蕃薯椪』搬到信義西街10號，晚上經過常常看到排隊。來自台南有名的零食很少見，來三重可以吃吃看。 有別於傳統口味，現在白糖粿和蕃薯椪還多了幾種甜和鹹的口味，芝麻、抹茶和有酸菜都蠻特別的，菜單第一區買三個五十元優惠", images: ["白糖粿","白糖粿２","白糖粿３","白糖粿４",],location: CLLocationCoordinate2D(latitude:25.06554256220861,  longitude: 121.50043501003165),phoneNumber: "0918-196-859",url: "https://www.youtube.com/watch?v=XV24O6PktM8"),
        Food(id: 3, name: "牡丹咖啡", description: "新北三重咖啡廳，Botan coffee牡丹咖啡位於新北市三重區元富二街2號，隱身在三重重劃區裡新蓋社區型大樓一樓現代風咖啡廳，從早上10點營業到晚上8點，簡約有設計感的英文設計，以質感黑色色系讓大門牡丹花圖騰好張顯，室內以黑灰白為主色調，走全黑色系咖啡廳，讓人想一探究竟，提供義大利麵、咖哩飯、沙拉、咖啡、茶、甜點等，平日不限時咖啡廳，假日限時2小時，三重咖啡廳推薦", images: ["牡丹咖啡","牡丹咖啡２","牡丹咖啡３","牡丹咖啡４"],location: CLLocationCoordinate2D(latitude: 25.078454, longitude: 121.497806),phoneNumber: "02-2984-0942",url: "https://www.youtube.com/watch?v=cO0qpbbYb7o"),
        Food(id: 4, name: "花枝羹", description: "《朱記花枝羹》在三重開業超過50年，是當地人從小吃到的三重排隊美食老店，而且《朱記花枝羹》最厲害的是就只賣花枝羹和米粉炒這樣一套東西就能賣這麼久，營業時間超長的幾乎是從早賣到晚，不論早餐還是晚餐都能吃得到", images: ["花枝羹","花枝羹２"],location: CLLocationCoordinate2D(latitude: 25.06437108549481,  longitude: 121.49742345302842),phoneNumber: "02-2985-8256",url: "https://www.youtube.com/watch?v=s9rEksuB-AI"),
        Food(id: 5, name: "炭烤燒餅", description: "三重最強燒餅店《老曾碳烤燒餅店》就藏在文化北路的巷弄裡面，從早上7點就開門，一路賣到下午4點半，招牌雖然很不清楚，但滿滿的排隊人潮就是直接告訴你位置在那，重點是《老曾碳烤燒餅店》賣得超便宜的，碳烤燒餅20元、胡椒餅22元，其他通通都只賣13元，每個來的都是一袋十幾個買，而且《老曾碳烤燒餅店》最熱門的碳烤燒餅還會被提前預訂完售。", images: ["炭烤燒餅","炭烤燒餅２","炭烤燒餅３","炭烤燒餅４",],location: CLLocationCoordinate2D(latitude: 25.06711373411805,  longitude: 121.49959765673002),phoneNumber: " 02-2941-6728",url: "https://www.youtube.com/watch?v=5oGatnAKg-s"),
        Food(id: 6, name: "滷肉飯", description: "說到三重魯肉飯，在地人會推薦《今大魯肉飯》，早上就營業，早餐、午餐跟晚餐都能吃到今大魯肉飯，只要用餐時間，今大魯肉飯店前總能看到排隊人潮，這裡也是許多三重在地人的第一名魯肉飯，有名到連外地人都會特地來品嘗。今大除了魯肉飯，斜對面的今大麵店也是平價美食。", images: ["滷肉飯","滷肉飯２","滷肉飯３","滷肉飯４","滷肉飯５",],location: CLLocationCoordinate2D(latitude: 25.064583911020296, longitude:121.49157858371525),phoneNumber: "02-2983-6726",url: "https://www.youtube.com/watch?v=mnvavOjuwCY"),
        Food(id: 7, name: "鍋燒麵", description: "「啊母啊姆鍋燒麵」位於三重區重新路上，鄰近捷運蔡寮站、台北橋站，步行約５～７分鐘，內用環境是大理石紋桌有點網美店的感覺，店前店後搭配得滿酷的；店內鍋燒麵賣得品項超多，有原味、泡菜、沙茶、麻辣口味，搭配各式各樣的海鮮，而1700元的痛風海鮮麵因選用活體海鮮，需提早預訂！", images: ["鍋燒麵","鍋燒麵２","鍋燒麵３","鍋燒麵４",],location: CLLocationCoordinate2D(latitude: 25.063585924080005,longitude:  121.50051405302834),phoneNumber: "0966-536-169",url: "https://www.youtube.com/watch?v=DAFzwA2qFoM"),

    ]

    var body: some View {
        ZStack{
            
            NavigationView {
                ZStack{
                    Image("食物")
                       .resizable()
                       .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity)
                                    
                    List(foods) { food in
                        NavigationLink(destination: FoodDetailView(food: food)) {
                            Text(food.name)
                        }
                    }.navigationBarTitle("三重美食")
                }
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
#Preview {
    FoodsView()
}
