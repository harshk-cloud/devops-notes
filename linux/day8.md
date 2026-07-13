# Day 8 - Basic HTTP Server & Local Web Servers

## python -m http.server

Meaning: Python ka built-in HTTP server jo current working directory ko temporary web server bana deta hai.

Purpose: Website testing, file sharing aur development ke liye quickly HTTP server start karna.

Example: python -m http.server

My Notes:
- Current working directory automatically serve hoti hai.
- Default port 8000 use hota hai.
- Ctrl + C se server stop hota hai.
- Production ke liye nahi, sirf development/testing ke liye use kare.


## Default Port (8000)

Meaning: Port ek communication endpoint hota hai jahan service listen karti hai.

Purpose: Browser ko batana ki kis service se connect hona hai.

Example: localhost:8000

My Notes:
- Python HTTP Server default port 8000 use karta hai.
- Agar port busy ho to custom port use kar sakte hain.
- Browser me port number specify karna padta hai.


## Custom Port

Meaning: Default port ki jagah apni choice ka port use karna.

Purpose: Port conflict avoid karna ya custom configuration use karna.

Example: python -m http.server 7600

My Notes:
- Server kisi bhi available port par chal sakta hai.
- Browser me wahi port number likhna padega.
- Example: localhost:7600


## localhost

Meaning: Apne hi computer ko refer karne wala hostname.

Purpose: Local machine par running services ko access karna.

Example: localhost:7600

My Notes:
- localhost apne hi system ko point karta hai.
- localhost 127.0.0.1 par resolve hota hai.
- Local testing ke liye bahut use hota hai.


## 127.0.0.1 (Loopback Address)

Meaning: Special IP address jo hamesha apne hi computer ko refer karta hai.

Purpose: Network stack ko test karna aur local services access karna.

Example: 127.0.0.1:8085

My Notes:
- Isse Loopback Address kehte hain.
- Internet connection ki zarurat nahi hoti.
- localhost aur 127.0.0.1 practically same destination par le jate hain.


## 0.0.0.0

Meaning: Server sabhi available network interfaces par listen karta hai.

Purpose: Different interfaces se incoming requests accept karna.

Example: Serving HTTP on 0.0.0.0 port 8000

My Notes:
- Ye actual IP address nahi hai.
- Wi-Fi, Ethernet aur Virtual Interfaces sab par listen kar sakta hai.
- Python HTTP Server start hone par ye message dikh sakta hai.


## Directory Listing

Meaning: Browser me current folder ki files aur folders ki list dikhana.

Purpose: Folder ke contents ko browser se access karna.

Example: http://localhost:8000

My Notes:
- Agar index.html nahi hoti to directory listing dikhti hai.
- Files browser se open ya download ki ja sakti hain.
- Current directory hi serve hoti hai.


## index.html

Meaning: Website ki default homepage file.

Purpose: Browser me default webpage display karna.

Example: nano index.html

My Notes:
- index.html milte hi directory listing hide ho jati hai.
- Browser automatically isi file ko open karta hai.
- Basic website banane ki starting file hoti hai.


## mkdir

Meaning: Naya directory (folder) create karna.

Purpose: Files organize karna.

Example: mkdir website

My Notes:
- Naya folder create karta hai.
- Website files alag folder me rakhna achhi practice hai.


## cd

Meaning: Current working directory change karna.

Purpose: Dusre folder me move hona.

Example: cd website

My Notes:
- Jis directory me honge, wahi Python HTTP Server serve karega.
- Current directory bahut important hoti hai.


## nano

Meaning: Linux ka terminal-based text editor.

Purpose: Files create aur edit karna.

Example: nano index.html

My Notes:
- Ctrl + X → Exit
- Y → Save changes
- Enter → File save


## PHP Built-in Server

Meaning: PHP ka built-in development web server.

Purpose: PHP applications locally run karna.

Example: php -S 127.0.0.1:8085

My Notes:
- -S built-in server start karta hai.
- Development aur testing ke liye use hota hai.
- Browser me localhost:8085 open kar sakte hain.


## Node.js HTTP Server

Meaning: Node.js ke through simple HTTP server chalana.

Purpose: Static website serve karna.

Example: npx http-server -p 8086

My Notes:
- npx package directly run karta hai.
- -p se port specify karte hain.
- Browser me localhost:8086 open hota hai.


## Apache Web Server

Meaning: Internet ka ek popular web server software.

Purpose: Production aur development websites host karna.

Example: systemctl start apache2

My Notes:
- Apache service systemctl se start hoti hai.
- Default port 80 use karta hai.
- Agar port busy ho to configuration change karni padti hai.


## Apache Port Configuration

Meaning: Apache kis port par listen karega ye configuration file decide karti hai.

Purpose: Port conflict avoid karna.

Example: /etc/apache2/ports.conf

My Notes:
- Listen 80 ko Listen 8080 me change kar sakte hain.
- Configuration save karne ke baad Apache restart/start karna hota hai.
- Browser me localhost:8080 se access kar sakte hain.


# curl Command & HTTP Headers

## curl

Meaning: Command-line tool jo server ya website se communicate karta hai.

Purpose: Browser ke bina HTTP requests bhejna aur server ka response dekhna.

Example: curl localhost:7600

My Notes:
- Browser ki jagah terminal se website access kar sakte hain.
- Raw server response terminal me show hota hai.
- HTTP, HTTPS, FTP, FTPS aur SCP protocols support karta hai.
- Linux, Cybersecurity aur API testing me bahut use hota hai.


## Browser vs curl

Meaning: Browser aur curl dono website access karte hain, lekin output alag hota hai.

Purpose: Browser rendering aur raw server response ka difference samajhna.

Example: curl localhost:8080

My Notes:
- Browser HTML ko render karta hai.
- CSS aur JavaScript execute karta hai.
- curl sirf raw HTML ya server response dikhata hai.


## curl -o

Meaning: Website ka output file me save karta hai.

Purpose: Webpage ya file download karna.

Example: curl -o coolwebsite localhost:8080

My Notes:
- -o output ko specified file me save karta hai.
- ls se downloaded file verify kar sakte hain.
- cat command se file ka content dekh sakte hain.


## cat

Meaning: File ka content terminal me display karta hai.

Purpose: File ko bina editor khole dekhna.

Example: cat coolwebsite

My Notes:
- File ka pura content terminal me print karta hai.
- Quick file checking ke liye useful command hai.


## curl -I

Meaning: Sirf HTTP Response Headers show karta hai.

Purpose: Server ki information aur response status check karna.

Example: curl -I localhost:8080

My Notes:
- Webpage download nahi karta.
- Sirf headers display karta hai.
- Troubleshooting ke liye useful hai.


## HTTP Response Headers

Meaning: Server dwara bheji gayi metadata information.

Purpose: Client ko response ke baare me information dena.

Example: HTTP/1.1 200 OK

My Notes:
- Status Code show hota hai.
- Server software ki information milti hai.
- Content-Type aur Content-Length bhi milte hain.
- Actual webpage se pehle headers aate hain.


## Important Response Headers

Meaning: Response ke important metadata fields.

Purpose: Server response ko samajhna.

Example:
- HTTP/1.1 200 OK
- Server
- Content-Type
- Content-Length

My Notes:
- 200 OK = Request successful.
- Server = Kaunsa web server chal raha hai.
- Content-Type = Kis type ka data bheja gaya.
- Content-Length = Response ka size.


## curl -v

Meaning: Verbose mode jo complete HTTP communication dikhata hai.

Purpose: Request aur Response dono analyze karna.

Example: curl -v localhost:8080

My Notes:
- Complete HTTP conversation show karta hai.
- Debugging aur troubleshooting me useful hai.
- Cybersecurity me frequently use hota hai.


## Request Headers

Meaning: Client dwara server ko bheji gayi information.

Purpose: Server ko batana ki client kya request kar raha hai.

Example:
GET / HTTP/1.1
Host: localhost:8080

My Notes:
- ">" symbol request headers ko show karta hai.
- Client → Server communication hoti hai.
- Browser bhi internally request headers bhejta hai.


## Response Headers

Meaning: Server dwara client ko bheji gayi information.

Purpose: Request ka result aur response details batana.

Example:
HTTP/1.1 200 OK

My Notes:
- "<" symbol response headers ko show karta hai.
- Server → Client communication hoti hai.
- Iske baad actual webpage data aata hai.


# HTTP Methods, Status Codes & wget

## HTTP Request Methods

Meaning: HTTP Methods batate hain ki client server se kya action perform karna chahta hai.

Purpose: Server par different operations perform karna.

Example:
- GET
- POST
- PUT
- PATCH
- DELETE

My Notes:
- GET → Server se data retrieve karta hai.
- POST → Server par naya data bhejta hai.
- PUT → Existing resource ko completely replace/update karta hai.
- PATCH → Existing resource ka sirf required part update karta hai.
- DELETE → Resource ko remove karta hai.
- ✓ Note: Video me "UPDATE" bola gaya tha, lekin official HTTP Method **UPDATE nahi hota**. Sahi methods PUT aur PATCH hain.


## HTTP Status Codes

Meaning: Status Codes batate hain ki server ne request ka kya result diya.

Purpose: Request successful hui ya error aaya, ye batana.

Example:
- 200 OK
- 404 Not Found

My Notes:
- 200 OK → Request successful thi.
- 404 Not Found → Requested page/resource server par nahi mila.
- Status codes troubleshooting me bahut important hote hain.


## wget

Meaning: Command-line tool jo internet ya web server se files download karta hai.

Purpose: Files aur webpages ko directly download karna.

Example: wget localhost:7600

My Notes:
- Default output file automatically save karta hai.
- Download progress terminal me dikhata hai.
- Agar webpage download kare to by default index.html naam se save ho sakta hai.
- curl ki tarah command-line tool hai, lekin downloading ke liye zyada use hota hai.


## curl vs wget

Meaning: Dono command-line networking tools hain, lekin unka primary use alag hai.

Purpose: Sahi tool ko sahi situation me use karna.

Example:
- curl localhost:7600
- wget localhost:7600

My Notes:
- curl → APIs test karne, HTTP requests aur debugging ke liye best hai.
- wget → Files aur webpages download karne ke liye best hai.
- curl output terminal me dikhata hai.
- wget file ko automatically save karta hai.


## Key Learnings

- `python -m http.server` current folder ko temporary HTTP server bana deta hai.
- Default Python HTTP Server port `8000` hota hai, lekin custom port bhi use kar sakte hain.
- `localhost` aur `127.0.0.1` dono apne hi computer ko refer karte hain.
- Agar `index.html` present na ho to browser directory listing dikhata hai.
- `0.0.0.0` ka matlab server sabhi available network interfaces par listen kar raha hai.
- PHP (`php -S`) aur Node.js (`npx http-server`) se bhi local web server run kiya ja sakta hai.
- Apache default port `80` use karta hai, jise `ports.conf` me change kiya ja sakta hai.
- `curl` browser ke bina HTTP requests bhejne aur server response dekhne ke liye use hota hai.
- `curl -o` response ko file me save karta hai.
- `curl -I` sirf HTTP response headers dikhata hai.
- `curl -v` complete HTTP request aur response communication show karta hai.
- HTTP Request Headers client se server tak jate hain, jabki Response Headers server se client tak aate hain.
- Common HTTP Methods: `GET`, `POST`, `PUT`, `PATCH` aur `DELETE`.
- `200 OK` successful request ko aur `404 Not Found` missing resource ko indicate karta hai.
- `wget` webpages aur files ko directly download karne ke liye use hota hai.
