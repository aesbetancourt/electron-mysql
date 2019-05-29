const {app, BrowserWindow} = require('electron');
const path = require('path');
const url = require('url');

require('electron-reload')(__dirname,{
    electron: path.join(__dirname, '../node_modules', 'bin', 'electron')
});


let mainWindow;

function createMainWindow() {
    mainWindow = new BrowserWindow({width: 900, height: 725, minWidth:800, minHeight: 720, frame: false});
    mainWindow.setResizable(false);
    // mainWindow.webContents.openDevTools();
    mainWindow.loadURL(url.format({
        pathname: path.join(__dirname, 'views/login.html'),
        protocol: 'file',
        slashes: true
    }));
    mainWindow.on('closed', () => {
        app.quit();
    });
}
app.on('window-all-closed', () => {
    app.quit();
});

app.on('ready', () => {
    createMainWindow()
});


