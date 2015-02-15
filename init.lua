-- Tell the chip to connect to the access point

print('Welcome')
wifi.setmode(wifi.STATION)
print('set mode=STATION (mode='..wifi.getmode()..')')
print('MAC: ',wifi.sta.getmac())
print('chip: ',node.chipid())
print('heap: ',node.heap())
wifi.sta.config("Internet","")

tmr.alarm(0, 3000, 1, function()
   if wifi.sta.getip() == nil then
      print("Connecting to AP...")
   else
      tmr.stop(0)
      print('IP: ',wifi.sta.getip())
   end
end)

