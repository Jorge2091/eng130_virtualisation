## How to set up reverse proxy for an application
By now, you should have nginx install and running in the port 80. In port 3000, you should have your `npm start` should be running, should be like a website. As you can see, with the nginx, you dont need to have a port location with your ip address, as this automatically gets you the website. We want to do this with the port 3000. To do this, we will use reverse proxy using nginx. 
1. To do this, we need to go into nginx file and get the specific file to change the location of that port. the nginx configuration is inside virtual machine and we can get inside using:
```bash
sudo nano /etc/nginx/sites-available/default
```
2. This will get you inside the file and be able to edit. Inside this file, there is a block `server` and inside this block, there is a `location /`.
3. Replace the content inside this block with the following:
making sure they are spaced out as required
```bash
    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
```
change the http://localhost:`3000` with the port required
4. save the file with ctrl+x > y > enter
5. to make sure the code is correct and no systax error, run `sudo nginx -t`
6. `sudo systemctl restart nginx` to make the new codes active
7. get back to the folder where you have the `app.js`
8. `npm install` to get updates
9. `npm start` to execute the program
Now you can go back to the location of nginx and see that the page is no longer the nginx page but the site you connected from port 3000