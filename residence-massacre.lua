                                                                                 loadstring(game:      
                                                                        HttpGet(                                        
                                                                    "https://raw.githubusercontent.com/9mfg/rem-ui/main/rem.lua") 
                                                                )();local v0=Rem;assert(v0 and v0.Alive ,"REM failed to load");local v1 
                                                            =game:GetService("Players");local v2=game:GetService("RunService");local v3=  
                                                          game:GetService("Workspace");local v4=game:GetService("ReplicatedStorage");local  
                                                        v5=v1.LocalPlayer;local v6=true;local v7={stam=false,phase=false,pESP=false,mESP=     
                                                      false,iESP=false};local v8={};task.spawn(function() local v23=v3:FindFirstChild("Doors"); 
                                                    if v23 then for v91,v92 in ipairs(v23:GetChildren()) do if (v92.ClassName=="Model") then for  
                                                  v134,v135 in ipairs(v92:GetDescendants()) do if ((v135.ClassName=="Part") or (v135.ClassName==    
                                                  "MeshPart") or (v135.ClassName=="WedgePart") or (v135.ClassName=="UnionOperation")) then v8[ #v8 +  
                                                1 ]=v135;end end end end end end);task.spawn(function() while v6 do if v7.stam then local v93=v5.       
                                                Character;if v93 then local v126=v93:FindFirstChild("Stam");if  not v126 then local v140=v93:             
                                              FindFirstChild("Sprint");if v140 then v126=v140:FindFirstChild("Stam");end end if v126 then pcall(function()  
                                              v126.Value=5;end);end end end task.wait(0.15);end end);task.spawn(function() while v6 do if v7.phase then for 
                                             v118=1, #v8 do pcall(function() v8[v118].CanCollide=false;end);end end task.wait(1);end end);local v9,v10=24,16; 
                                            local v11,v12={},{};local v13,v14={},{};for v24=1,v9 do local v25=Drawing.new("Square");v25.Thickness=1;v25.Filled= 
                                          false;v25.Color=Color3.fromRGB(255,80,80);v25.Visible=false;local v30=Drawing.new("Text");v30.Size=13;v30.Center=true;  
                                          v30.Outline=true;v30.Visible=false;v13[v24]={box=v25,tag=v30};end for v36=1,v10 do local v37=Drawing.new("Text");v37.Size 
                                          =13;v37.Center=true;v37.Outline=true;v37.Color=Color3.fromRGB(226,169,123);v37.Visible=false;v14[v36]=v37;end task.spawn(   
                                          function() while v6 do local v68,v69={},{};for v89,v90 in ipairs(v1:GetPlayers()) do if ((v90~=v5) and v7.pESP) then local  
                                        v119,v120=pcall(function() return v90.UserId;end);local v121=v90.Character;local v122=v121 and v121:FindFirstChild("Head") ;    
                                        local v123=v121 and v121:FindFirstChild("HumanoidRootPart") ;local    --[[==============================]]v124=v121 and v121:     
                                        FindFirstChild("Humanoid") ;if (v122 and v123 and v124)     --[[============================================]]then v68[ #v68 + 1  
                                        ]={name=v90.Name,head=v122,root=v123,hum=v124,mut=false --[[======================================================]]};end end end   
                                      if v7.mESP then local v94=v3:FindFirstChild("Mutant") --[[==========================================================]];local v95=v94    
                                      and v94:FindFirstChild("Head") ;local v96=v94 and   --[[==============================================================]]v94:            
                                      FindFirstChild("HumanoidRootPart") ;local v97=v94   --[[================================================================]]and v94:        
                                      FindFirstChild("Humanoid") ;if (v95 and v96) then   --[[==================================================================]]v68[ #v68 + 1 
                                       ]={name="MUTANT",head=v95,root=v96,hum=v97,mut=    --[[==================================================================]]true};end end     
                                    if v7.iESP then local v98=v3:FindFirstChild(          --[[====================================================================]]"ItemSpots"); 
                    if v98 then for v137,v138 in ipairs(v98:GetChildren()) do if ( #v69>= --[[====================================================================]]v10) then break 
              ;end local v139=v138:FindFirstChildOfClass("Tool") or v138:                 --[[======================================================================]]              
            FindFirstChildOfClass("Model") ;if v139 then local v143=v139:FindFirstChild(  --[[======================================================================]]"Handle");if  
          v143 then local v144,v145=pcall(function() return v143.Position;end);if (v144   --[[======================================================================]]and v145)     
        then v69[ #v69 + 1 ]={pos=v145,name=v139.Name};end end end end end end v11,v12=   --[[======================================================================]]v68,v69;task. 
        wait(0.4);end end);local v15;v15=v2.RenderStepped:Connect(function() local v44=   --[[======================================================================]]v11;local v45 
      =0;for v70=1, #v44 do if (v45>=v9) then break;end local v71=v44[v70];local v72,v73, --[[======================================================================]]v74=pcall(    
      function() return WorldToScreen(v71.head.Position + Vector3.new(0,0.7,0) );end);local --[[==================================================================]] v75,v76,v77=   
      pcall(function() return WorldToScreen(v71.root.Position-Vector3.new(0,3.2,0) );end);  --[[================================================================]]if (v72 and v75   
    and v74 and v77) then v45=v45 + 1 ;local v99=v13[v45];local v100=v76.Y-v73.Y ;local     --[[==============================================================]]v101=v100 * 0.5 ; 
    if v71.mut then v99.box.Color=Color3.fromRGB(180,60,255);else v99.box.Color=Color3.       --[[==========================================================]]fromRGB(255,80,80); 
    end v99.box.Position=Vector2.new(v73.X-(v101 * 0.5) ,v73.Y);v99.box.Size=Vector2.new(v101,  --[[====================================================]]v100);v99.box.Visible=  
    true;local v105="";if v71.hum then local v131,v132,v133=pcall(function() return v71.hum.      --[[==============================================]]Health,v71.hum.MaxHealth; 
    end);if (v131 and v132 and v133) then v105=" "   .. math.floor(v132)   .. "/"   .. math.floor(    --[[====================================]]v133) ;end end v99.tag.Text=  
    v71.name   .. v105 ;v99.tag.Position=Vector2.new(v73.X,v73.Y-16 );v99.tag.Visible=true;end end for    --[[========================]]v78=v45 + 1 ,v9 do v13[v78].box.      
    Visible=false;v13[v78].tag.Visible=false;end local v46=v12;local v47=0;for v81=1, #v46 do if (v47>=v10) then break;end local v82,v83,v84=pcall(function() return        
  WorldToScreen(v46[v81].pos);end);if (v82 and v84) then v47=v47 + 1 ;v14[v47].Text=v46[v81].name;v14[v47].Position=Vector2.new(v83.X,v83.Y);v14[v47].Visible=true;end    
  end for v85=v47 + 1 ,v10 do v14[v85].Visible=false;end end);local function v16(v48) local v49=v5.Character;local v50=v49 and v49:FindFirstChild("HumanoidRootPart") ; 
  if v50 then pcall(function() v50.CFrame=v48;end);end end local v17=CFrame.new( -1.72,4.5, -91.36);local v18=CFrame.new( -79.72,4.67, -132.75);local function v19()      
  local v51=v5.Character;local v52=v51 and v51:FindFirstChild("HumanoidRootPart") ;local v53=v52 and v52.CFrame ;v16(v17);task.wait(0.35);local v54=v3:FindFirstChild(    
  "FuseBox");local v55=v54 and v54:FindFirstChild("Wires") ;local v56=v4:FindFirstChild("Remotes");local v57=v56 and v56:FindFirstChild("ClickWire") ;if (v55 and v57)    
  then for v114,v115 in ipairs(v55:GetChildren()) do pcall(function() v57:FireServer(v115);end);task.wait(0.1);end end task.wait(0.2);if (v53 and v52) then pcall(        
  function() v52.CFrame=v53;end);end end local v20=v0:AddTab({Title="Main",Icon="script"});v20:AddLabel({Title="Residence Massacre",Description=                          
  "Matcha port. Speed, fullbright, 3rd person and kick-bypass removed (unsupported here)."});v20:AddToggle({Title="Infinite Stamina",Description="Locks Stam to 5.",      
  Default=false,Callback=function(v58) v7.stam=v58;end});v20:AddToggle({Title="Phase Through Doors",Description="Drops CanCollide on all doors. Walk through.",Default=   
  false,Callback=function(v60) v7.phase=v60;if  not v60 then for v117=1, #v8 do pcall(function() v8[v117].CanCollide=true;end);end end end});v20:AddButton({Title=        
  "Fix Power Wires",Description="TP to FuseBox, fires ClickWire on all wires, returns.",ButtonText="Fix",Callback=function() task.spawn(v19);end});v20:AddButton({Title=  
  "TP to FuseBox",Description="One-shot teleport.",ButtonText="TP",Callback=function() v16(v17);end});v20:AddButton({Title="TP to Generator",Description=                   
  "Fuel is manual (no click API). TP then click.",ButtonText="TP",Callback=function() v16(v18);end});local v21=v0:AddTab({Title="ESP",Icon="script"});v21:AddToggle({Title= 
  "Players ESP",Description="Box + name + HP.",Default=false,Callback=function(v62) v7.pESP=v62;end});v21:AddToggle({Title="Mutant ESP",Description=                        
  "Purple box for Workspace.Mutant.",Default=false,Callback=function(v64) v7.mESP=v64;end});v21:AddToggle({Title="Item ESP",Description="Text for tools in ItemSpots.",     
  Default=false,Callback=function(v66) v7.iESP=v66;end});local v22=v0:AddTab({Title="Info",Icon="gear"});v22:AddLabel({Title="Dropped (Matcha limits)",Description=         
  "Walk/Sprint sliders, fullbright, third-person, auto doors/power/fuel clicks, Adonis bypass."});v22:AddLabel({Title="Why",Description=                                    
  "No hooks/clicks; WalkSpeed and Lighting throw Unknown property. Tested live."});v22:AddButton({Title="Unload",Description="Stops loops, clears ESP, kills UI.",          
  ButtonText="Unload",Callback=function() v6=false;if v15 then pcall(function() v15:Disconnect();end);end for v87=1,v9 do pcall(function() v13[v87].box:Remove();v13[v87].  
  tag:Remove();end);end for v88=1,v10 do pcall(function() v14[v88]:Remove();end);end v0:Destroy();end});v20:Select();v0:Notify({Title="Loaded",Content=                     
  "Residence Massacre Matcha port ready.",Type="success",Duration=4});
