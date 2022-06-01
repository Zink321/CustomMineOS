local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H="MineOS EFI","Change label","key_down","component_added","filesystem","URL boot",component.proxy,component.list,computer.pullSignal,computer.uptime,table.insert,math.max,math.min,math.huge,math.floor,0xE1E1E1,0x000000,0x878787,0x878787,0x000000;local I,J,K=g(h("eeprom")()),g(h("gpu")()),h("internet")()local L,M,N,O,P,Q,R=J.set,J.setBackground,J.fill,I.setData,I.getData;u,v,w,x,y,z,A,B,C,D,E,F,G,H={{"/OS.lua"},{"/init.lua",function()computer.getBootAddress,computer.setBootAddress=P,O end}},function()local S=h("screen")()if S then J.bind(S,true)Q,R=J.getResolution()end end,function(T,U,V,W,X)M(X)N(T,U,V,W," ")end,function(T,U,Y,Z)J.setForeground(Y)L(T,U,Z)end,function(Z,_,a0)return{s=Z,c=_,b=a0}end,function(U,Y,Z)x(o(Q/2-#Z/2),U,Y,Z)end,function(U,a1)U=o(R/2-U/2)w(1,1,Q,R,q)z(U,p,a1)return U+2 end,function(a2,a3)local a4={}for a5 in a2:gmatch("[^\r\n]+")do a4[#a4+1]=a5:gsub("\t","  ")end;local U=A(#a4,a)for a6=1,#a4 do z(U,r,a4[a6])U=U+1 end;if a3 then while i()~=c do end end end,function(...)local a7,a8=load(...)if a7 then a7,a8=xpcall(a7,debug.traceback)if a7 then return end end;B(a8,1)end,function(a9)local aa;for a6=1,#u do aa=u[a6]if a9.exists(aa[1])then B("Booting from "..(a9.getLabel()or a9.address))if P()~=a9.address then O(a9.address)end;if aa[2]then aa[2]()end;local ab,ac,ad,ae,a8=a9.open(aa[1],"rb"),""repeat ad=a9.read(ab,n)ac=ac..(ad or"")until not ad;a9.close(ab)C(ac,"="..aa[1])return 1 end end end,function(af)return y("Back",af,1)end,function(a1,ag)local ah=1;while 1 do local U,T,Z,ai=A(#ag+2,a1)for a6=1,#ag do Z="  "..ag[a6].s.."  "T=o(Q/2-#Z/2)if a6==ah then M(s)x(T,U,t,Z)M(q)else x(T,U,r,Z)end;U=U+1 end;ai={i()}if ai[1]==c then if ai[4]==200 and ah>1 then ah=ah-1 elseif ai[4]==208 and ah<#ag then ah=ah+1 elseif ai[4]==28 then if ag[ah].c then ag[ah].c()end;if ag[ah].b then break end end elseif ai[1]==d and ai[3]=="screen"then v()end end end,function(a1,aj)local U,Z,ak,al,am,ai=A(2,a1),"",1;while 1 do al=aj..Z;N(1,U,Q,1," ")z(U,r,al..(ak and"_"or""))ai={i(0.5)}if ai[1]==c then if ai[4]==28 then return Z elseif ai[4]==14 then Z=Z:sub(1,-2)else am=unicode.char(ai[3])if am:match("^[%w%d%p%s]+")then Z=Z..am end end;ak=1 elseif ai[1]=="clipboard"then Z=Z..ai[3]elseif not ai[1]then ak=not ak end end end,function(an)local ao,ac,a7,a8=g(K).request(an),""if ao then B("Downloading script")while 1 do a7,a8=ao.read(n)if a7 then ac=ac..a7 else ao.close()if a8 then B(a8,1)else C(ac,"=url")end;break end end else B("Invalid URL",1)end end;v()B("Hold Alt to show boot options")local ap,aq=j()+1;while j()<ap do aq={i(ap-j())}if aq[1]==c and aq[4]==56 then local ar={y("Disk utility",function()local as,at=function(Z,au)return(#Z<au and Z..string.rep(" ",au-#Z)or Z:sub(1,au)).."   "end,{E()}local function av()for a6=2,#at do table.remove(at,1)end;for aw in h(e)do local a9=g(aw)local ax,ay=a9.getLabel()or"Unnamed",a9.isReadOnly()k(at,1,y((aw==P()and"> "or"  ")..as(ax,10)..as(a9.spaceTotal()>1048575 and"HDD"or a9.spaceTotal()>65535 and"FDD"or"SYS",3)..as(ay and"R  "or"R/W",3)..as(math.ceil(a9.spaceUsed()/a9.spaceTotal()*100).."%",4)..aw:sub(1,8).."…",function()local az={y("Set as bootable",function()O(aw)av()end,1),E()}if not ay then k(az,2,y(b,function()pcall(a9.setLabel,G(b,"New value: "))av()end,1))k(az,3,y("Erase",function()B("Erasing "..aw)a9.remove("")av()end,1))end;F(ax.." ("..aw..")",az)end))end end;av()F("Select filesystem",at)end),E()}if K then k(ar,2,y("System recovery",function()H("https://tinyurl.com/29urhz7z")end))k(ar,3,y(f,function()H(G(f,"Address: "))end))end;F(a,ar)end end;local aA=g(P())if not(aA and D(aA))then local function aB()for aw in h(e)do aA=g(aw)if D(aA)then computer.shutdown()else aA=nil end end;if not aA then B("Not boot sources found")end end;aB()while 1 do if i()==d then aB()end end end
