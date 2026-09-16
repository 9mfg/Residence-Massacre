                                                                                 loadstring(game:      
                                                                        HttpGet(                                        
                                                                    "https://raw.githubusercontent.com/9mfg/rem-ui/main/rem.lua") 
                                                                )();local UI=Rem;assert(UI and UI.Alive ,"REM failed to load");local    
                                                            Players=game:GetService("Players");local RunService=game:GetService(          
                                                          "RunService");local Workspace=game:GetService("Workspace");local                  
                                                        ReplicatedStorage=game:GetService("ReplicatedStorage");local lp=Players.LocalPlayer;  
                                                      local running=true;local flags={stam=false,phase=false,pESP=false,mESP=false,iESP=false}; 
                                                    local doorParts={};task.spawn(function() local doors=Workspace:FindFirstChild("Doors");if     
                                                  doors then for _,door in ipairs(doors:GetChildren()) do if (door.ClassName=="Model") then for _,d 
                                                   in ipairs(door:GetDescendants()) do if ((d.ClassName=="Part") or (d.ClassName=="MeshPart") or (d.  
                                                ClassName=="WedgePart") or (d.ClassName=="UnionOperation")) then doorParts[ #doorParts + 1 ]=d;end end  
                                                end end end end);task.spawn(function() while running do if flags.stam then local char=lp.Character;if     
                                              char then local stam=char:FindFirstChild("Stam");if  not stam then local sp=char:FindFirstChild("Sprint");if  
                                              sp then stam=sp:FindFirstChild("Stam");end end if stam then pcall(function() stam.Value=5;end);end end end    
                                            task.wait(0.15);end end);task.spawn(function() while running do if flags.phase then for i=1, #doorParts do pcall( 
                                            function() doorParts[i].CanCollide=false;end);end end task.wait(1);end end);local POOL,IPOOL=24,16;local targets,   
                                          items={},{};local pool,ipool={},{};for i=1,POOL do local box=Drawing.new("Square");box.Thickness=1;box.Filled=false;box 
                                          .Color=Color3.fromRGB(255,80,80);box.Visible=false;local tag=Drawing.new("Text");tag.Size=13;tag.Center=true;tag.Outline= 
                                          true;tag.Visible=false;pool[i]={box=box,tag=tag};end for i=1,IPOOL do local t=Drawing.new("Text");t.Size=13;t.Center=true;t 
                                          .Outline=true;t.Color=Color3.fromRGB(226,169,123);t.Visible=false;ipool[i]=t;end task.spawn(function() while running do     
                                        local out,it={},{};for _,plr in ipairs(Players:GetPlayers()) do if ((plr~=lp) and flags.pESP) then local ok,uid=pcall(function( 
                                        ) return plr.UserId;end);local char=plr.Character;local head=char and --[[==============================]] char:FindFirstChild(   
                                        "Head") ;local root=char and char:FindFirstChild(           --[[============================================]]"HumanoidRootPart") 
                                         ;local hum=char and char:FindFirstChild("Humanoid") ;  --[[======================================================]]if (head and    
                                      root and hum) then out[ #out + 1 ]={name=plr.Name,    --[[==========================================================]]head=head,root=   
                                      root,hum=hum,mut=false};end end end if flags.mESP   --[[==============================================================]]then local m=   
                                      Workspace:FindFirstChild("Mutant");local head=m and --[[================================================================]] m:             
                                      FindFirstChild("Head") ;local root=m and m:         --[[==================================================================]]              
                                      FindFirstChild("HumanoidRootPart") ;local hum=m and --[[==================================================================]] m:               
                                    FindFirstChild("Humanoid") ;if (head and root) then   --[[====================================================================]]out[ #out + 1 
                     ]={name="MUTANT",head=head,root=root,hum=hum,mut=true};end end if    --[[====================================================================]]flags.iESP then 
               local spots=Workspace:FindFirstChild("ItemSpots");if spots then for _,spot --[[======================================================================]] in ipairs(   
            spots:GetChildren()) do if ( #it>=IPOOL) then break;end local tool=spot:      --[[======================================================================]]              
          FindFirstChildOfClass("Tool") or spot:FindFirstChildOfClass("Model") ;if tool   --[[======================================================================]]then local h= 
        tool:FindFirstChild("Handle");if h then local ok,p=pcall(function() return h.     --[[======================================================================]]Position;end) 
        ;if (ok and p) then it[ #it + 1 ]={pos=p,name=tool.Name};end end end end end end  --[[======================================================================]]targets,items 
      =out,it;task.wait(0.4);end end);local conn;conn=RunService.RenderStepped:Connect(   --[[======================================================================]]function()    
      local list=targets;local n=0;for i=1, #list do if (n>=POOL) then break;end local t=   --[[==================================================================]]list[i];local   
      okTop,top,v1=pcall(function() return WorldToScreen(t.head.Position + Vector3.new(0,   --[[================================================================]]0.7,0) );end);    
    local okBot,bot,v2=pcall(function() return WorldToScreen(t.root.Position-Vector3.new(0, --[[==============================================================]]3.2,0) );end);if  
    (okTop and okBot and v1 and v2) then n=n + 1 ;local e=pool[n];local h=bot.Y-top.Y ;local  --[[==========================================================]]w=h * 0.5 ;if t.mut 
     then e.box.Color=Color3.fromRGB(180,60,255);else e.box.Color=Color3.fromRGB(255,80,80);end --[[====================================================]] e.box.Position=Vector2 
    .new(top.X-(w * 0.5) ,top.Y);e.box.Size=Vector2.new(w,h);e.box.Visible=true;local hp="";if t. --[[==============================================]]hum then local okH,h1,h2= 
    pcall(function() return t.hum.Health,t.hum.MaxHealth;end);if (okH and h1 and h2) then hp=" "   .. --[[====================================]] math.floor(h1)   .. "/"   .. 
     math.floor(h2) ;end end e.tag.Text=t.name   .. hp ;e.tag.Position=Vector2.new(top.X,top.Y-16 );e.tag --[[========================]].Visible=true;end end for i=n + 1 ,   
    POOL do pool[i].box.Visible=false;pool[i].tag.Visible=false;end local il=items;local m=0;for i=1, #il do if (m>=IPOOL) then break;end local ok,s,v=pcall(function()     
  return WorldToScreen(il[i].pos);end);if (ok and v) then m=m + 1 ;ipool[m].Text=il[i].name;ipool[m].Position=Vector2.new(s.X,s.Y);ipool[m].Visible=true;end end for i=m  
  + 1 ,IPOOL do ipool[i].Visible=false;end end);local function tpTo(cf) local char=lp.Character;local hrp=char and char:FindFirstChild("HumanoidRootPart") ;if hrp then 
   pcall(function() hrp.CFrame=cf;end);end end local FUSE_CF=CFrame.new( -1.72,4.5, -91.36);local GEN_CF=CFrame.new( -79.72,4.67, -132.75);local SAFE_CF=CFrame.new( -    
  22.64,40.1, -59.52);local savedHome=nil;local function fixWires() local char=lp.Character;local hrp=char and char:FindFirstChild("HumanoidRootPart") ;local back=hrp    
  and hrp.CFrame ;tpTo(FUSE_CF);task.wait(0.35);local fb=Workspace:FindFirstChild("FuseBox");local wires=fb and fb:FindFirstChild("Wires") ;local rems=ReplicatedStorage: 
  FindFirstChild("Remotes");local cw=rems and rems:FindFirstChild("ClickWire") ;if (wires and cw) then for _,w in ipairs(wires:GetChildren()) do pcall(function() cw:     
  FireServer(w);end);task.wait(0.1);end end task.wait(0.2);if (back and hrp) then pcall(function() hrp.CFrame=back;end);end end local function fullUnload() running=false 
  ;flags.stam=false;flags.phase=false;flags.pESP=false;flags.mESP=false;flags.iESP=false;for i=1, #doorParts do pcall(function() doorParts[i].CanCollide=true;end);end if 
   conn then pcall(function() conn:Disconnect();end);end for i=1,POOL do pcall(function() pool[i].box:Remove();pool[i].tag:Remove();end);end for i=1,IPOOL do pcall(      
  function() ipool[i]:Remove();end);end UI:Destroy();end local Main=UI:AddTab({Title="Main",Icon="script"});Main:AddLabel({Title="Residence Massacre",Description=        
  "Welcome."});Main:AddToggle({Title="Infinite Stamina",Description="Locks Stam to 5.",Default=false,Callback=function(v) flags.stam=v;end});Main:AddToggle({Title=       
  "Phase Through Doors",Description="Drops CanCollide on all doors. Walk through.",Default=false,Callback=function(v) flags.phase=v;if  not v then for i=1, #doorParts do   
  pcall(function() doorParts[i].CanCollide=true;end);end end end});Main:AddButton({Title="Fix Power Wires",Description=                                                     
  "TP to FuseBox, fires ClickWire on all wires, returns.",ButtonText="Fix",Callback=function() task.spawn(fixWires);end});Main:AddButton({Title="TP to FuseBox",Description 
  ="Insta TP",ButtonText="TP",Callback=function() tpTo(FUSE_CF);end});Main:AddButton({Title="TP to Generator",Description="Fuel is manual (no click API). TP then click.",  
  ButtonText="TP",Callback=function() tpTo(GEN_CF);end});Main:AddButton({Title="TP to Safeplace",Description="Saves your spot, hides on the house roof for the night.",     
  ButtonText="Hide",Callback=function() local char=lp.Character;local hrp=char and char:FindFirstChild("HumanoidRootPart") ;if hrp then local ok,cf=pcall(function() return 
   hrp.CFrame;end);if (ok and cf) then savedHome=cf;end end tpTo(SAFE_CF);UI:Notify({Title="Safeplace",Content="On the roof. Hit Back Home after night.",Type="success",    
  Duration=4});end});Main:AddButton({Title="TP Back Home",Description="Returns to where you stood before hiding.",ButtonText="Home",Callback=function() if savedHome then   
  tpTo(savedHome);else UI:Notify({Title="Home",Content="No saved spot yet. Hide first.",Type="error",Duration=3});end end});local ESPt=UI:AddTab({Title="ESP",Icon="script" 
  });ESPt:AddToggle({Title="Players ESP",Description="Box + name + HP.",Default=false,Callback=function(v) flags.pESP=v;end});ESPt:AddToggle({Title="Mutant ESP",           
  Description="Purple box for Workspace.Mutant.",Default=false,Callback=function(v) flags.mESP=v;end});ESPt:AddToggle({Title="Item ESP",Description=                        
  "Text for tools in ItemSpots.",Default=false,Callback=function(v) flags.iESP=v;end});Main:Select();UI:Notify({Title="Loaded",Content=                                     
  "Residence Massacre Matcha port ready.",Type="success",Duration=4});