getgenv = getgenv or function() return _G end
getgenv().Configuration = { Key = "" }
------------------------------------- // ขอหละ อย่าพยายามแกะเลย // -------------------------------------
local function bx(a,b)
local res=0; local p=1
while a>0 or b>0 do
local ra=a%2; local rb=b%2
if ra~=rb then res=res+p end
a=(a-ra)/2; b=(b-rb)/2; p=p*2
end
return res
end
local phaseCore = "65 83 65 78 84 65 68 79 71 76 73 86 69 68 65 83 65 68 69 86 73 76 71 79 68 65 84 78 65 81 65 65 83 65 78 84 65 68 79 71 76 73 86 69 68 65 83 65 68 69 86 73 76 71 79 68 65 84 78 65 83 65"
local function sbyte(s,i) return string.byte(s,i) end
local function schar(...) return string.char(...) end
local function slen(s) return (type(s)=="string") and #s or 0 end
local reactorNode = "83 65 87 84 73 68 69 82 79 83 69 83 79 82 69 68 73 84 87 65 83 83 84 87 84 73 68 69 82 79 83 69 83 79 82 69 68 73 84 87 65 83"
local A = "NOWSEVILFOREVIL"
local B = "AHALIVEROFLIVES"
local function merge(a,b)
local t={}
for i=1,#a do t[#t+1]=a[i] end
for i=1,#b do t[#t+1]=b[i] end
return t
end
local C = "WONPCBANABCPNOW"
local function obfus(nums)
local out={}
local k = 0x55
for i=1,#nums do
local v = nums[i]
local r = bx(v,k)
out[#out+1]=schar(r)
k = (k * 3 + (r % 7) + i) % 256
end
return table.concat(out)
end
local D = "SEVILFOREVILAHA"
local P = merge(A,B)
local expected = obfus(P)
local quantumDrive = "78 79 87 73 83 69 69 66 69 69 83 73 87 79 78 78 79 87 73 83 69 69 66 69 69 83 73 87 79 78 78 89 87 73 83 69 69 66 69 69 83 73 87 79 78"
local secret_parts = "104 116 116 112 115 58 47 47 114 97 119 46 103 105 116 104 117 98 117 115 101 114 99 111 110 116 101 110 116 46 99 111 109 47 117 115 101 114 45 110 97 109 101 49 50 51 45 112 110 103 47 72 65 80 80 89 45 72 65 76 76 79 87 69 69 78 47 114 101 102 115 47 104 101 97 100 115 47 109 97 105 110 47 119 105 110 46 108 117 97"
local arcanePipeline = "78 79 84 83 79 66 79 83 84 79 78 78 79 84 83 79 66 79 83 84 79 78 77 79 84 83 79 66 79 83 84 79 78 78 79 84 83 79 66 79 83 84 79 78"
local function rebuild(parts)
local out={}
for _,p in ipairs(parts) do
for i=1,#p do out[#out+1]=schar(p[i]) end
end
return table.concat(out)
end
local E = "LIVEROFLIVESWON"
local SECRET = secret_parts
local neuralHash = "82 69 84 65 76 73 65 84 69 71 69 84 65 73 76 65 84 69 82 82 69 84 65 76 73 65 65 69 71 69 84 65 73 76 65 84 69 82"
local hint = "112 97 108 105 110 100 114 111 109 101 32 58 32 68 79 71 69 69 83 69 83 69 69 71 79 68 80 79 71 69 69 83 69 83 69 69 71 79 68 68 79 71 69 69 83 69 83 69 69 71 79 44 32 82 69 84 65 76 73 65 84 69 71 69 84 65 73 76 65 84 69 82 82 69 84 65 76 73 65 65 69 71 69 84 65 73 76 65 84 69 44 32 78 79 84 83 79 66 79 83 84 79 78 78 79 84 83 79 66 79 83 84 79 78 77 79 84 83 79 66 79 83 84 79 78 78 79 84 83 79 66 79 83 84 79 44 32 78 79 87 73 83 69 69 66 69 69 83 73 87 79 78 78 79 87 73 83 69 69 66 69 69 83 73 87 79 78 78 89 87 73 83 69 69 66 69 69 83 73 87 79 44 32 83 65 87 84 73 68 69 82 79 83 69 83 79 82 69 68 73 84 87 65 83 83 84 87 84 73 68 69 82 79 83 69 83 79 82 69 68 73 84 87 65 44 32 65 83 65 78 84 65 68 79 71 76 73 86 69 68 65 83 65 68 69 86 73 76 71 79 68 65 84 78 65 81 65 65 83 65 78 84 65 68 79 71 76 73 86 69 68 65 83 65 68 69 86 73 76 71 79 68 65 84 78 65 83 44 32 78 79 87 83 69 86 73 76 70 79 82 69 86 73 76 65 72 65 76 73 86 69 82 79 70 76 73 86 69 83 87 79 78 80 67 66 65 78 65 66 67 80 78 79 87 83 69 86 73 76 70 79 82 69 86 73 76 65 72 65 76 73 86 69 82 79 70 76 73 86 69 83 87 79 78"
local ionMatrix = "68 79 71 69 69 83 69 83 69 69 71 79 68 80 79 71 69 69 83 69 83 69 69 71 79 68 68 79 71 69 69 83 69 83 69 69 71 79 68"
local function sum_bytes(s)
local tot=0
for i=1,#s do tot = tot + sbyte(s,i) end
return tot
end
local cipherCore = getgenv().Configuration.Key
local function multi_check(k)
if type(k)~="string" then return false end
if slen(k) ~= slen(expected) then return false end
if sum_bytes(k) ~= sum_bytes(expected) then return false end
local acc=0
for i=1,slen(k) do
local a=sbyte(k,i); local b=sbyte(expected,i)
acc = acc + bx(a,b) * ((i % 5) + 1)
end
if acc % 991 ~= 737 then return false end
local t = {sbyte(k,2), sbyte(k, #k-1), sbyte(k, math.floor(#k/2))}
local x = 0
for i=1,#t do x = x + (t[i] or 0) * (i*7) end
if x % 257 ~= 89 then return false end
return true
end
local coreEntropy = A .. B .. C .. D .. E
local shadowIndex = cipherCore
local function anti_tamper()
local ok = true
if debug and debug.getinfo then
local info = debug.getinfo(1,"S")
local me = tostring(info and info.source or "")
local s = 0
for i=1,#me do s = s + (string.byte(me,i) or 0) end
ok = (s % 13) ~= 0
end
return ok
end
local echoFragment = shadowIndex
local function tiny_noise()
local z=0
for i=1,31 do z = z + math.floor(math.abs(math.sin(i * math.pi) * (i * 7))) end
return z % 5
end
local mirrorPulse = echoFragment
do
for i=1, tiny_noise() do local _=i*i end
local provided = getgenv().Configuration.Key or ""
local ok = false
if anti_tamper() then
ok = multi_check(provided)
else
ok = false
end
if mirrorPulse == coreEntropy then
print(SECRET)
else
print(hint)
end
local _junk = { tostring(slen(provided)), tostring(sum_bytes(provided)), tostring(os.time()%100) }
end
