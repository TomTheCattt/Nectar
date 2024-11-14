# Setup.

## Prepare Node.js and PostMan for API RESTful, Xampp for local database.

### Database setup:

- Install Xampp.

Download link: https://www.apachefriends.org/download.html

- Open Xampp, go to tab Manage Servers, run Apache Web Server and MySQL Database.

- Open Apache Web Server, select PHPMyAdmin, it will navigate to Database Server.

- In Database Server, create a new database and name it as "groceries".

- In database "groceries", import file "groceries.sql"

### API Setup: Do this in your node folder.

#### Node setup:

- From Terminal, install NVM.

"curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash"

"source ~/.nvm/nvm.sh"

- Install node.

"nvm install 20.10.0"

- Check node version.

"node -v"

- Move to your node directory

"cd /path/to/your/node/directory"

- Install node for application.

"npm install"

- Run node.

"node app"

* Terminal will show "New connection established with database." with port 3001.

#### Postman setup: 

- Download Postman client from its website https://postman.com

- open Postman client, import file "online_groceries.postman_collection.json"

# Launch app from Xcode and test.



