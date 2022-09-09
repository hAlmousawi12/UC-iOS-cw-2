//
//  ContentView.swift
//  cw2p1
//
//  Created by Hussain Almousawi on 9/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var imageName = "q"
    var body: some View {
        VStack {
            Text("ما هو المسار المفضل لديك")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        
            Text("iOS")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 65)
                .background(Color.black)
                .clipShape(Capsule())
                .padding(5)
                .onTapGesture {
                    imageName = "ios"
                }
            
            Text("GameDev")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 65)
                .background(Color.black)
                .clipShape(Capsule())
                .padding(5)
                .onTapGesture {
                    imageName = "unity"
                }
            
            Text("Web")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 65)
                .background(Color.black)
                .clipShape(Capsule())
                .padding(5)
                .onTapGesture {
                    imageName = "vs code"
                }
            
            Text("Android")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 65)
                .background(Color.black)
                .clipShape(Capsule())
                .padding(5)
                .onTapGesture {
                    imageName = "android"
                }


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
