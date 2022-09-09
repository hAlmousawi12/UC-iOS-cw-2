//
//  ContentView.swift
//  cw2p2
//
//  Created by Hussain Almousawi on 9/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var dinar = ""
    var body: some View {
        VStack {
            Text("محول العملات العجيب")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            TextField("العملة بالدينار", text: $dinar)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            HStack {
                Image("usa")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 50)
                    .cornerRadius(15)
                
                Text("$ \((Double(dinar) ?? 0.0) * 3.28) ")
                    .font(.title)
            }
            
            HStack {
                Image("uk")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 50)
                    .cornerRadius(15)
                
                Text("£ \((Double(dinar) ?? 0.0) * 2.46) ")
                    .font(.title)
            }
            
            HStack {
                Image("europe")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 50)
                    .cornerRadius(15)
                
                Text("€ \((Double(dinar) ?? 0.0) * 2.70) ")
                    .font(.title)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
