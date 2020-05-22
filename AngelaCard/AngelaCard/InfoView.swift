//
//  InfoView.swift
//  AngelaCard
//
//  Created by Mac OS on 5/22/20.
//  Copyright © 2020 Ahmed. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let title: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(title)
                    .font(.system(size: 20))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(title: "phoneNumbar", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
