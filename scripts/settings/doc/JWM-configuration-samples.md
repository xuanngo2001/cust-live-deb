```xml
<?xml version="1.0"?>

<JWM>

<StartupCommand>
volwheel 
</StartupCommand>

<Group>
 <Name>volwheel</Name>
 <Name>xmessage</Name>
 <Name>xpad</Name>
 <Option>noborder</Option>
 <Option>nolist</Option>
 <Option>notitle</Option>
</Group>

   <RootMenu height="0" onroot="0">
      	<Program icon="gnome-session-suspend.png" label="Suspend">exec sudo pm-suspend</Program>
      	<Program icon="gnome-session-reboot.png" label="Reboot">exec sudo reboot</Program>
      	<Program icon="gnome-session-halt.png" label="Shutdown">exec sudo poweroff</Program>
      	<Exit icon="application-exit.png" label="Exit-X" confirm="false"/>
   </RootMenu>

   <RootMenu height="0" onroot="12">
   </RootMenu>

   <RootMenu height="0" onroot="3">
      <Menu icon="applications-accessories.png" label="Accessories">
	<Program icon="utilities-terminal.png" label="Terminal">exec xterm</Program>
	<Program icon="accessories-calculator.png" label="Calculator">exec xcalc</Program>
	<Program icon="task-due.png" label="Notes">exec xpad</Program>
      </Menu>
      <Menu icon="applications-graphics.png" label="Graphics">
	<Program icon="applications-graphics.png" label="Paint">exec mtpaint</Program>
      </Menu>
      <Menu icon="applications-internet.png" label="Internet">
	<Program icon="web-browser.png" label="WWW-Browser">exec xmessage " Loading... " -center -timeout 10 -buttons , | firefox &amp;</Program>
      </Menu>
      <Menu icon="applications-office.png" label="Office">
	  <Program icon="applications-office.png" label="Docs">exec abiword</Program>
	  <Program icon="beta-base.png" label="Office">exec soffice-beta</Program>
      </Menu>
      <Menu icon="applications-multimedia.png" label="Sound + Video">
	  <Program icon="applications-multimedia.png" label="Media Player">exec gnome-mplayer</Program>
	  <Program icon="preferences-desktop.png" label="Alsa">exec xterm -e alsamixer</Program>
      </Menu>
      <Menu icon="applications-system.png" label="System Tools">
          <Program icon="gtk-edit.png" label="Edit Menu">exec leafpad ~/.jwmrc</Program>
          <Program icon="utilities-system-monitor.png" label="Htop">exec xterm -e htop</Program>
          <Program label="Gparted">exec gksudo gparted</Program>
      </Menu>
   </RootMenu>

   <RootMenu height="0" onroot="6">
	<Program icon="user-home.png" label="Home Folder">exec Thunar</Program>
	<Program icon="user-desktop.png" label="Desktop">exec Thunar ~/Desktop</Program>
   </RootMenu>

   <RootMenu height="0" onroot="7">
      <Menu icon="preferences-system.png" label="Administration">
        <Program icon="dialog-warning.png" label="Root File Manager">exec gksudo "Thunar /"</Program>
	<Program icon="dialog-warning.png" label="Root Terminal">exec gksudo "xterm -rv -fn 9x15"</Program>
      </Menu>
      <Menu icon="preferences-desktop.png" label="Preferences">
          <Program icon="preferences-desktop-theme.png" label="Appearance">exec lxappearance</Program>
      </Menu>
	<Separator/>
      	<Program icon="system-log-out.png" label="Logout">exec ~/.logout</Program>
	<Separator/>
        <Restart icon="view-refresh.png" label="Restart JWM"/>
   </RootMenu>


   <Tray  halign="left" valign="top" height="0">
      <TrayButton label=" Applications  ">root: 3</TrayButton>
      <TrayButton label=" Places  ">root: 6</TrayButton>
      <TrayButton label=" System  ">root: 7</TrayButton>
   </Tray>

   <Tray  halign="center" valign="top" height="0" layer="0">
      <TrayButton icon="xterm.png">exec: xterm</TrayButton>
      <TrayButton icon="filemanager.png">exec: Thunar</TrayButton>
      <TrayButton icon="www.png">exec: xmessage " Loading... " -center -timeout 10 -buttons , | firefox &amp;</TrayButton>
   </Tray>

   <Tray  halign="right" valign="top" height="0">
      <Dock/>
      <Clock format="   %a %b %d - %l:%M   ">exec cal | xmessage -g -1+32 -file "-"</Clock>
      <TrayButton icon="system-log-out.png">root: 0</TrayButton>
   </Tray>

   <Tray  x="0" y="-1" height="0">
      <TrayButton icon="go-bottom.png">showdesktop</TrayButton>
      <TaskList/>
      <Pager/>
   </Tray>

<!-- Visual Styles -->

   <WindowStyle>

      <Font>Sans-7</Font>
      <Width>4</Width>
      <Height>18</Height>

      <Active>
         <Text>white</Text>
         <Title>gray30:gray20</Title>
         <Corner>gray20</Corner>
         <Outline>black</Outline>
      </Active>

      <Inactive>
         <Text>white</Text>
         <Title>gray20:gray30</Title>
         <Corner>gray30</Corner>
         <Outline>black</Outline>
      </Inactive>

   </WindowStyle>

   <TaskListStyle>
      <Font>Sans-7</Font>
      <ActiveForeground>white</ActiveForeground>
      <ActiveBackground>gray30</ActiveBackground>
      <Foreground>white</Foreground>
      <Background>gray20</Background>
   </TaskListStyle>

   <TrayStyle>
      <Font>Sans-10:bold</Font>
      <Background>black</Background>
      <Foreground>white</Foreground>
   </TrayStyle>

   <PagerStyle>
      <Outline>black</Outline>
      <Foreground>white</Foreground>
      <Background>gray20</Background>
      <ActiveForeground>white</ActiveForeground>
      <ActiveBackground>gray30</ActiveBackground>
   </PagerStyle>

   <MenuStyle>
      <Font>Sans-12</Font>
      <Foreground>white</Foreground>
      <Background>gray20</Background>
      <ActiveForeground>white</ActiveForeground>
      <ActiveBackground>gray30</ActiveBackground>
   </MenuStyle>

   <PopupStyle enabled="false"/>

   <IconPath>
      $HOME/.icons
   </IconPath>
   <IconPath>
      /usr/share/pixmaps
   </IconPath>
   <IconPath>
      /usr/share/icons/gnome/16x16/categories
   </IconPath>
   <IconPath>
      /usr/share/icons/gnome/16x16/actions
   </IconPath>
   <IconPath>
      /usr/share/icons/gnome/16x16/apps
   </IconPath>
   <IconPath>
      /usr/share/icons/gnome/16x16/places
   </IconPath>
   <IconPath>
      /usr/share/icons/gnome/16x16/status
   </IconPath>
   <IconPath>
      /usr/share/icons/hicolor/16x16/apps
   </IconPath>

<!-- Desktops -->
   <Desktops count="3">
	<!--<Background type="command">exec eval `cat  $HOME/.fehbg`</Background>-->
	<Background type="command">exec xsetroot -solid black</Background>
   </Desktops>

   <DoubleClickSpeed>400</DoubleClickSpeed>
   <DoubleClickDelta>2</DoubleClickDelta>
   <FocusModel>click</FocusModel>
   <SnapMode distance="10">border</SnapMode>
   <MoveMode>outline</MoveMode>
   <ResizeMode>outline</ResizeMode>

<!-- Key bindings -->
   <Key mask="A" key="F2">exec: gmrun</Key>
   <Key mask=""  key="Print">exec: scrot %T.png -e 'mv $f ~/Desktop';xmessage " Screenshot Done! " -center</Key>
   <Key mask="A"  key="Print">exec: xterm -g 35x0-1-40 -e scrot -cd 5 %T.png -e 'mv $f ~/Desktop'</Key>
   <Key mask=""  key="Super_L">exec: xset dpms force off</Key>
   <Key mask="CA" key="Delete">exec: xterm -e htop</Key>
</JWM>
```
