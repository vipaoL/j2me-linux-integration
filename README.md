<img src="https://user-images.githubusercontent.com/59665125/191324141-fbf88cd3-b9b9-4cb7-a3e2-71fca2eeaa7c.png" width="300"><img src="https://user-images.githubusercontent.com/59665125/191324339-cb580a37-f0c4-4621-92e8-d239c2083821.png" width="300">


# Installation (you can also try it on the desktop)
```
cd ~ && git clone https://github.com/vipaoL/j2me-linux-integration.git
```
```
mv j2me-linux-integration j2me # you can rename it as you want
```
```
cd j2me && ./install.sh
```
**Change my (vipaol) home folder to your in "add-j2me-jar.desktop". I forgot to fix it, i'll do it later**
# Usage
**GUI:**

Right click on j2me-application, choose "open with "Install J2ME app"". The app will appear in your applications menu

you can try to install my game for test :) https://github.com/vipaoL/mobap-game/releases

**CLI:**
```
./wrapper-files/install-j2me-jar.sh /path/to/j2me-app.jar
```
# Full uninstall
Delete "j2me" folder, ~/.local/share/applications/add-j2me-jar.desktop, ~/.local/share/applications/midlet-manager.desktop and ~/.local/share/applications/*_J2ME.desktop


# Some plans for future
Maybe i'll fully rewrite it in other language. Writing on bash is pain
