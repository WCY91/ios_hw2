//
//  FoodDetailView.swift
//  hw_2
//
//  Created by user05 on 2023/10/18.
//
import SwiftUI
import MapKit
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}

struct FoodDetailView: View {
    var food: Food

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 25.032969, longitude: 121.565418), 
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Divider()
                    .padding(.vertical, 2)
                    .background(Color(red: 142/255, green: 67/255, blue: 0/255))
                TabView {
                    ForEach(food.images, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10) // 圓角
                            .shadow(radius: 2) // 陰影
                            .overlay(
                                RoundedRectangle(cornerRadius: 5) // 邊框
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .padding([.top, .horizontal])
                    }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .frame(height: 250) 
                Divider()
                    .padding(.vertical, 2)
                    .background(Color(red: 142/255, green: 67/255, blue: 0/255))
                HStack {
                                    Text("電話：")
                                        .font(.title2)
                                        .bold()

                                    Spacer()

                                    Link("\(food.phoneNumber)", destination: URL(string: "tel://\(food.phoneNumber)")!)
                                        .foregroundColor(.blue)
                                        .font(.title3)
                                        .padding()
                                        .background(Color(white: 0.9))  // 淺灰色背景
                                        .cornerRadius(10)  // 圓角
                                        .padding(.horizontal)  // 提供外部左右邊的間距，使其看起來更好
                                }
                                .padding(.horizontal)  // 提供外部左右邊的間距，使其看起來更好
                Divider()
                    .padding(.vertical, 2)
                    .background(Color(red: 142/255, green: 67/255, blue: 0/255))
                Map(coordinateRegion: $region, annotationItems: [food]) { food in
                    MapPin(coordinate: food.location, tint: .blue)
                }
                .frame(height: 300)
                Divider()
                    .padding(.vertical, 2)
                    .background(Color(red: 142/255, green: 67/255, blue: 0/255))
                Text(food.description)
                    .padding(.horizontal)
                    .lineSpacing(10)
                Divider()
                    .padding(.vertical, 2)
                    .background(Color(red: 142/255, green: 67/255, blue: 0/255))
                WebView(urlString: food.url)
                                    .frame(height: 180)
                
                
            }
        }
        .onAppear {
            region.center = food.location
        }
        .navigationBarTitle(food.name)
        .background(
                   Image("美食")
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .edgesIgnoringSafeArea(.all)
               )
    }
}



