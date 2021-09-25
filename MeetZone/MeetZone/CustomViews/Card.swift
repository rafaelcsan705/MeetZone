//
//  Card.swift
//  MeetZone
//
//  Created by Santos, Rafael Costa on 25/09/2021.
//

import SwiftUI

struct CardStruct {
    let title: String
    let description: String
    let banner: String
    let logo: String
    let distance: String
    let date: String
    
    init(
        title: String,
        description: String,
        banner: String,
        logo: String,
        distance: String,
        date: String
    ) {
        self.title = title
        self.description = description
        self.banner = banner
        self.logo = logo
        self.distance = distance
        self.date = date
    }
}

struct Card: View {
    
    var title: String
    var description: String
    var banner: String
    var logo: String
    var distance: String
    var date: String
    
    init(
        title: String = "Benecar",
        description: String = "Venha à feira benecar, carros em campanha ate 20% de desconto.",
        banner: String = "Benecar",
        logo: String = "BenecarLogo",
        distance: String = "10 km",
        date: String = "2 days"
    ) {
        self.title = title
        self.description = description
        self.banner = banner
        self.logo = logo
        self.distance = distance
        self.date = date
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading ,spacing: 5) {
                VStack(spacing: -25) {
                    ZStack {
                        Image(banner)
                            .resizable()
                            .cornerRadius(20)
                        LinearGradient(colors: [.clear, .white], startPoint: .top, endPoint: .bottom)
                    }
                    .frame(width: .infinity, height: 80, alignment: .center)
                    
                    HStack {
                        Image(logo)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .clipShape(Circle())
                            .shadow(radius: 7)
                        Text(title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                    }
                }
                
                Text(description)
                    .foregroundColor(Color(UIColor.lightGray))
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 5)
                
                HStack {
                    Text(distance)
                        .foregroundColor(Color(UIColor.lightGray))
                        .font(.callout)
                    Spacer()
                    
                    Button {
                        print("Aderi")
                    } label: {
                        Text(date)
                            .foregroundColor(Color(UIColor.lightGray))
                            .font(.callout)
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color(UIColor.lightGray))
                    }
                    
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 20, x: 2, y: 2)
        }
        .padding(.horizontal)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
