//
//  TitleRow.swift
//  SennaChat
//
//  Created by N Sena Sabırlı on 10.07.2024.
//


import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "file:///Users/nsenasabirli/Downloads/WhatsApp%20Image%202024-07-11%20at%2013.12.50.jpeg")
    var name = "Soul Sister 💗"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach1"))
    }
}
