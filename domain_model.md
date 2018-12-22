```
Client
╔════════════╗
║            ║ Sends HTTP requests
║  Browser   ║ (GET, POST)
║            ║ HTML, CSS
╚════════════╝
    |
    |
    |
Server (Sinatra Framework) is listening on a specific port
╔════════════╗
║            ║ Rack maps HTTP requests/response into/from Ruby
║    RACK    ║ Rack provides the DSL to write the web app
║            ║
╚════════════╝
    |
    |
    |
 app.rb                        
╔════════════╗             ╔════════════╗
║            ║------------>║            ║
║ Controller ║             ║    Model   ║
║            ║<------------║            ║
╚════════════╝             ╚════════════╝
    | |                         |
╔════════════╗                  |              ╔════════════╗
║            ║                  |              ║            ║
║   Views    ║                  |------------->║  Campaigns ║<-----------------------
║            ║                  |              ║  (class)   ║                       |
╚════════════╝                  |              ╚════════════╝                       |
Embedded Ruby                   |                                                   |
                                |              ╔════════════╗       (SQL)     ╔════════════╗
                                |              ║            ║                 ║ PostgreSQL ║
                                |------------->║   Invest   ║<--------------->║  Database  ║
                                               ║   (class)  ║                 ║            ║
                                               ╚════════════╝                 ╚════════════╝

```
