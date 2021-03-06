//
//  ContentView.swift
//  Invoice
//
//  Created by bhavesh on 25/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                if #available(iOS 15.0, *) {
                    Image("background")
                        .resizable()
                        .foregroundColor(.red)
//                        .tint(Color.purple)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    // Fallback on earlier versions
                }
                
                VStack {
                    Image("backgroundCover")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
//                        .background(Color.green)
                        .foregroundColor(Color.orange)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: UIScreen.screenHeight*0.65, maxHeight: UIScreen.screenHeight*0.65)
                    Spacer()
                }
                
                VStack {
                    
                    Image("logo")

                    Spacer()
                    Button {
                        Logger.log(logLevel: .verbose,
                                   "Get Started Button Clicked")
                        CrashUtility.shared.log()
                    } label: {
                        NavigationLink(destination: InvoiceListView()) {
//                        NavigationLink(destination: BusinessView()) {
                            Text("Get Started")
                                .bold()
                                .foregroundColor(Color.black)
                                .padding([.vertical], 20)
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.white)
                                                .shadow(color: Color.gray.opacity(0.7),
                                                        radius: 12, x: 1, y: 1))
                                .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
                        }
                    }
                }.padding(EdgeInsets(top: 40, leading: 0, bottom: 50, trailing: 0))
            }
        }.tint(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
