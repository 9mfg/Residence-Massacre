                                                                                 loadstring(game:      
                                                                        HttpGet(                                        
                                                                    "https://raw.githubusercontent.com/9mfg/rem-ui/main/rem.lua") 
                                                                )();local v0=Rem;assert(v0 and v0.Alive ,"REM failed to load");local v1 
                                                            =game:GetService("Players");local v2=game:GetService("RunService");local v3=  
                                                          game:GetService("Workspace");local v4=game:GetService("ReplicatedStorage");local  
                                                        v5=v1.LocalPlayer;local v6=true;local v7={stam=false,phase=false,pESP=false,mESP=     
                                                      false,iESP=false};local v8={};task.spawn(function() local v23=0 + 0 ;local v24;while true 
                                                     do if (v23==0) then v24=v3:FindFirstChild("Doors");if v24 then for v131,v132 in ipairs(v24:  
                                                  GetChildren()) do if (v132.ClassName=="Model") then for v147,v148 in ipairs(v132:GetDescendants() 
                                                  ) do if ((v148.ClassName=="Part") or (v148.ClassName=="MeshPart") or (v148.ClassName=="WedgePart")  
                                                or (v148.ClassName=="UnionOperation")) then v8[ #v8 + (1386 -(1103 + 282)) ]=v148;end end end end end   
                                                break;end end end);task.spawn(function() while v6 do local v72=0;while true do if (v72==(0 + 0)) then if  
                                              v7.stam then local v133=v5.Character;if v133 then local v144=350 -(87 + 263) ;local v145;while true do if (   
                                              v144==(181 -(67 + 113))) then if v145 then pcall(function() v145.Value=4 + 1 ;end);end break;end if (v144==(0 
                                             -0)) then v145=v133:FindFirstChild("Stam");if  not v145 then local v154=v133:FindFirstChild("Sprint");if v154    
                                            then v145=v154:FindFirstChild("Stam");end end v144=1 + 0 ;end end end end task.wait(0.15);break;end end end end);   
                                          task.spawn(function() while v6 do if v7.phase then for v115=3 -2 , #v8 do pcall(function() v8[v115].CanCollide=false;   
                                          end);end end task.wait(953 -(802 + 150) );end end);local v9,v10=64 -40 ,16;local v11,v12={},{};local v13,v14={},{};for    
                                          v25=1 -0 ,v9 do local v26=Drawing.new("Square");v26.Thickness=1;v26.Filled=false;v26.Color=Color3.fromRGB(255,80,59 + 21 ); 
                                          v26.Visible=false;local v31=Drawing.new("Text");v31.Size=13;v31.Center=true;v31.Outline=true;v31.Visible=false;v13[v25]={   
                                        box=v26,tag=v31};end for v37=1,v10 do local v38=Drawing.new("Text");v38.Size=1010 -(915 + 82) ;v38.Center=true;v38.Outline=true 
                                        ;v38.Color=Color3.fromRGB(639 -413 ,99 + 70 ,123);v38.Visible=false;  --[[==============================]]v14[v37]=v38;end task.  
                                        spawn(function() while v6 do local v73,v74={},{};for v92,   --[[============================================]]v93 in ipairs(v1:   
                                        GetPlayers()) do if ((v93~=v5) and v7.pESP) then local  --[[======================================================]]v116,v117=pcall 
                                      (function() return v93.UserId;end);local v118=v93.    --[[==========================================================]]Character;local   
                                      v119=v118 and v118:FindFirstChild("Head") ;local    --[[==============================================================]]v120=v118 and   
                                      v118:FindFirstChild("HumanoidRootPart") ;local v121 --[[================================================================]]=v118 and v118: 
                                      FindFirstChild("Humanoid") ;if (v119 and v120 and   --[[==================================================================]]v121) then    
                                      v73[ #v73 + 1 ]={name=v93.Name,head=v119,root=v120, --[[==================================================================]]hum=v121,mut=     
                                    false};end end end if v7.mESP then local v94=0 -0 ;   --[[====================================================================]]local v95;    
                    local v96;local v97;local v98;while true do if (v94==(1188 -(1069 +   --[[====================================================================]]118))) then v97 
              =v95 and v95:FindFirstChild("HumanoidRootPart") ;v98=v95 and v95:           --[[======================================================================]]              
            FindFirstChild("Humanoid") ;v94=4 -2 ;end if (v94==(3 -1)) then if (v96 and   --[[======================================================================]]v97) then v73 
          [ #v73 + 1 + 0 ]={name="MUTANT",head=v96,root=v97,hum=v98,mut=true};end break;  --[[======================================================================]]end if (v94== 
        (0 -0)) then v95=v3:FindFirstChild("Mutant");v96=v95 and v95:FindFirstChild(      --[[======================================================================]]"Head") ;v94= 
        1 + 0 ;end end end if v7.iESP then local v99=791 -(368 + 423) ;local v100;while   --[[======================================================================]]true do if (  
      v99==(0 -0)) then v100=v3:FindFirstChild("ItemSpots");if v100 then for v149,v150 in --[[======================================================================]] ipairs(v100: 
      GetChildren()) do if ( #v74>=v10) then break;end local v151=v150:                     --[[==================================================================]]                
      FindFirstChildOfClass("Tool") or v150:FindFirstChildOfClass("Model") ;if v151 then    --[[================================================================]]local v153=v151:  
    FindFirstChild("Handle");if v153 then local v155,v156=pcall(function() return v153.     --[[==============================================================]]Position;end);if  
    (v155 and v156) then v74[ #v74 + 1 ]={pos=v156,name=v151.Name};end end end end end break; --[[==========================================================]]end end end v11,v12 
    =v73,v74;task.wait(0.4);end end);local v15;v15=v2.RenderStepped:Connect(function() local    --[[====================================================]]v45=v11;local v46=0;for 
     v75=19 -(10 + 8) , #v45 do if (v46>=v9) then break;end local v76=v45[v75];local v77,v78,v79= --[[==============================================]]pcall(function() return   
    WorldToScreen(v76.head.Position + Vector3.new(0 -0 ,442.7 -(416 + 26) ,0 -0 ) );end);local v80,   --[[====================================]]v81,v82=pcall(function()      
    return WorldToScreen(v76.root.Position-Vector3.new(0 + 0 ,4.2 -1 ,0) );end);if (v77 and v80 and v79   --[[========================]]and v82) then v46=v46 + 1 ;local v101 
    =v13[v46];local v102=v81.Y-v78.Y ;local v103=v102 * (438.5 -(145 + 293)) ;if v76.mut then v101.box.Color=Color3.fromRGB(180,490 -(44 + 386) ,1741 -(998 + 488) );else   
  v101.box.Color=Color3.fromRGB(82 + 173 ,80,66 + 14 );end v101.box.Position=Vector2.new(v78.X-(v103 * (772.5 -(201 + 571))) ,v78.Y);v101.box.Size=Vector2.new(v103,v102) 
  ;v101.box.Visible=true;local v107="";if v76.hum then local v128,v129,v130=pcall(function() return v76.hum.Health,v76.hum.MaxHealth;end);if (v128 and v129 and v130)   
  then v107=" "   .. math.floor(v129)   .. "/"   .. math.floor(v130) ;end end v101.tag.Text=v76.name   .. v107 ;v101.tag.Position=Vector2.new(v78.X,v78.Y-(1154 -(116 +   
  1022)) );v101.tag.Visible=true;end end for v83=v46 + 1 ,v9 do v13[v83].box.Visible=false;v13[v83].tag.Visible=false;end local v47=v12;local v48=0 -0 ;for v86=1 + 0 , # 
  v47 do if (v48>=v10) then break;end local v87,v88,v89=pcall(function() return WorldToScreen(v47[v86].pos);end);if (v87 and v89) then local v111=0 -0 ;while true do if  
  (v111==(3 -2)) then v14[v48].Position=Vector2.new(v88.X,v88.Y);v14[v48].Visible=true;break;end if (v111==(859 -(814 + 45))) then v48=v48 + (2 -1) ;v14[v48].Text=v47[   
  v86].name;v111=1 + 0 ;end end end end for v90=v48 + 1 + 0 ,v10 do v14[v90].Visible=false;end end);local function v16(v49) local v50=885 -(261 + 624) ;local v51;local   
  v52;while true do if (v50==(0 -0)) then v51=v5.Character;v52=v51 and v51:FindFirstChild("HumanoidRootPart") ;v50=1081 -(1020 + 60) ;end if (v50==(1424 -(630 + 793)))   
  then if v52 then pcall(function() v52.CFrame=v49;end);end break;end end end local v17=CFrame.new( -1.72,4.5, -(308.36 -217));local v18=CFrame.new( -79.72,18.67 -14 , - 
  (52.75 + 80));local function v19() local v53=0 -0 ;local v54;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v53==(1749 -(760 + 987)))    
  then v60=v59 and v59:FindFirstChild("ClickWire") ;if (v58 and v60) then for v140,v141 in ipairs(v58:GetChildren()) do local v142=1913 -(1789 + 124) ;while true do if ( 
  v142==(766 -(745 + 21))) then pcall(function() v60:FireServer(v141);end);task.wait(0.1 + 0 );break;end end end end task.wait(0.2);if (v56 and v55) then pcall(function()  
  v55.CFrame=v56;end);end break;end if (v53==(2 -1)) then task.wait(0.35);v57=v3:FindFirstChild("FuseBox");v58=v57 and v57:FindFirstChild("Wires") ;v59=v4:FindFirstChild(  
  "Remotes");v53=2;end if (v53==(0 -0)) then v54=v5.Character;v55=v54 and v54:FindFirstChild("HumanoidRootPart") ;v56=v55 and v55.CFrame ;v16(v17);v53=1 + 0 ;end end end   
  local v20=v0:AddTab({Title="Main",Icon="script"});v20:AddLabel({Title="Residence Massacre",Description=                                                                   
  "Matcha port. Speed, fullbright, 3rd person and kick-bypass removed (unsupported here)."});v20:AddToggle({Title="Infinite Stamina",Description="Locks Stam to 5.",Default 
  =false,Callback=function(v61) v7.stam=v61;end});v20:AddToggle({Title="Phase Through Doors",Description="Drops CanCollide on all doors. Walk through.",Default=false,      
  Callback=function(v63) v7.phase=v63;if  not v63 then for v114=1 + 0 , #v8 do pcall(function() v8[v114].CanCollide=true;end);end end end});v20:AddButton({Title=           
  "Fix Power Wires",Description="TP to FuseBox, fires ClickWire on all wires, returns.",ButtonText="Fix",Callback=function() task.spawn(v19);end});v20:AddButton({Title=    
  "TP to FuseBox",Description="One-shot teleport.",ButtonText="TP",Callback=function() v16(v17);end});v20:AddButton({Title="TP to Generator",Description=                   
  "Fuel is manual (no click API). TP then click.",ButtonText="TP",Callback=function() v16(v18);end});local v21=v0:AddTab({Title="ESP",Icon="script"});v21:AddToggle({Title= 
  "Players ESP",Description="Box + name + HP.",Default=false,Callback=function(v65) v7.pESP=v65;end});v21:AddToggle({Title="Mutant ESP",Description=                        
  "Purple box for Workspace.Mutant.",Default=false,Callback=function(v67) v7.mESP=v67;end});v21:AddToggle({Title="Item ESP",Description="Text for tools in ItemSpots.",     
  Default=false,Callback=function(v69) v7.iESP=v69;end});local v22=v0:AddTab({Title="Info",Icon="gear"});v22:AddLabel({Title="Dropped (Matcha limits)",Description=         
  "Walk/Sprint sliders, fullbright, third-person, auto doors/power/fuel clicks, Adonis bypass."});v22:AddLabel({Title="Why",Description=                                  
  "No hooks/clicks; WalkSpeed and Lighting throw Unknown property. Tested live."});v22:AddButton({Title="Unload",Description="Stops loops, clears ESP, kills UI.",        
  ButtonText="Unload",Callback=function() local v71=1055 -(87 + 968) ;while true do if (v71==(4 -3)) then for v123=1 + 0 ,v9 do pcall(function() v13[v123].box:Remove();  
    v13[v123].tag:Remove();end);end for v124=2 -1 ,v10 do pcall(function() v14[v124]:Remove();end);end v71=1415 -(447 + 966) ;end if (v71==(0 -0)) then v6=false;if v15   
    then pcall(function() v15:Disconnect();end);end v71=1818 -(1703 + 114) ;end if (v71==(703 -(376 + 325))) then v0:Destroy();break;end end end});v20:Select();v0:Notify 
    ({Title="Loaded",Content="Residence Massacre Matcha port ready.",Type="success",Duration=5 -1 });
