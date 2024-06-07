//
//  SpeachSelf.swift
//  speach
//
//  Created by Aulia Octaviani on 23/05/24.
//

import SwiftUI

struct SpeachSelf: View {
    var body: some View {
        VStack{
            HStack(alignment: .top,  spacing: 12) {
//            Text("0x")
                ProfileImageView()
                
                VStack(alignment: .leading, spacing: 4){
                    HStack {
                        Text("0xVIP78 ")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray))
                        
                        Button{
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }
                    }
                    
                    //                    Text("Today BNB Insight guys")
                    //                        .font(.footnote)
                    //                        .multilineTextAlignment()
                    Text("Today ")
                        .font(.footnote)
                        .foregroundColor(.black)
                    + Text("$BNB")
                        .font(.footnote)
                        .foregroundColor(.blue)
                    + Text(" Insight guys ??! i need your prediction asap for this wave after halving moment")
                        .font(.footnote)
                        .foregroundColor(.black)
                    
                    HStack{
                        Button{} label:{
                            Image(systemName: "heart")
                        }
                        Spacer(minLength: 16)
                        
                        Button{} label:{
                            Image(systemName: "bubble.right")
                        }
                        Spacer(minLength: 16)
                        
                        Button{} label:{
                            Image(systemName: "arrow.rectanglepath")
                        }
                        Spacer(minLength: 16)
                        
                        Button{} label:{
                            Image(systemName: "paperplane")
                        }
                        Spacer(minLength: 16)
                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 8)
                    
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    SpeachSelf()
}
