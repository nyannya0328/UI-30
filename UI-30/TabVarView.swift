//
//  TabVarView.swift
//  UI-30
//
//  Created by にゃんにゃん丸 on 2020/11/09.
//

import SwiftUI

struct TabVarView: View {
    
    @State var count = 1
    var body: some View {
        
        
        TabView{
            
            Image("p4")
             .resizable()
             .aspectRatio(contentMode: .fill)
                .tabItem { Image(systemName: "house")}
            
            
            
            
            
            
            
            List{
                
                ForEach(1...4,id : \.self){i in
                    
                    HStack{
                    
                    Image("p\(i)")
                        .resizable()
                        .frame(width: 30, height: 30)
                        
                        
                        
                        VStack{
                        Text("aaa")
                            .font(.title)
                            .font(.system(size: 30, weight: .heavy))
                            .foregroundColor(.red)
                            
                            
                            Text("aaa")
                                .font(.title)
                                .font(.system(size: 30, weight: .heavy))
                                .foregroundColor(.red)
                            
                            
                            
                            
                        }
                        
                    }
                    
                }
                
                
            }
            
        
                .tabItem { Image(systemName: "magnifyingglass.circle.fill")}
            
            
        
            
            
            
            HStack{
                
                Button(action: {
                    
                    if count != 1 {count -= 1}
                    
                    
                }){
                    
                    
                    Image(systemName: "minus")
                        .font(.system(size: 100, weight: .heavy))
                        .foregroundColor(.red)
                    
                    
                    
                    
                   
                    
                    
                    
                }
                
                Text("\(count)")
                    .font(.system(size: 100, weight: .heavy))
                
                Button(action: {count += 1}){
                    
                    Image(systemName: "plus")
                        .font(.system(size: 100, weight: .heavy))
                    
                }
                
                
                
            }
            
            
                .tabItem { Image(systemName: "line.horizontal.3")}
                
                
                
                
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                
                VStack{
                    
                    HStack{
                    
                    
                    Text("星は何個？")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        
                        Spacer()
                        
                        HStack{
                            
                            ForEach(1...5,id:\.self){i in
                                
                                
                            Image(systemName: "star.fill")
                                .font(.title3)
                                .foregroundColor(i <= 4 ? Color.red : Color.black.opacity(0.5))
                                
                                
                                
                            }
                            
                            
                            
                        }
                        
                        
                    }
                }
                
                
                
                Image(systemName: "plus")
                    .foregroundColor(.pink)
                    .frame(width: 100, height: 100)
                    .background(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.pink,style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, dash: [10,10]))
                    
                    
                    
                    
                    )
                
            }
            
          
            
         
                .tabItem { Image(systemName: "eyedropper.full")}
            
            
            
        }.accentColor(.red)
       
    }
}


