import beastybuttons.*;

BeastyWorld world;
BeastySurface page1, page2, page3, page4;

void setup() {
  size(1280, 720);

  //world setup
  world = new BeastyWorld(this);
  world.setBackgroundColor(#190034);

  //Welcome setup
  page1 = new BeastySurface(this)
    .setSurfaceImage("Startscreen Graphics.png", false)
    .setID("Welcome");

  page1.addWidget(new BB_Image(this, "BeastybuttonsLogo.png")
    .setScaleFactor(0.7, 0.7)
    .setPosition(width/6, height/3));

  page1.addWidget(new Label(this, "Check", 30)
    .setPosition((width/48)*8, (height/32)*15)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#190034)
    .setFont("Arial-Black-48.vlw"));

  page1.addWidget(new Label(this, "Out", 30)
    .setPosition((width/48*7.2), (height/32)*17)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#190034)
    .setFont("Arial-Black-48.vlw"));

  page1.addWidget(new Label(this, "Beastybuttons", 30)
    .setPosition((width/48*10.6), (height/32)*19)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#190034)
    .setFont("Arial-Black-48.vlw"));

  page1.addWidget(new Label(this, "This is a Beastybuttons Showcase Project to show", 15)
    .setPosition((width/48*12.5), (height/32)*21)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#190034));

  page1.addWidget(new Label(this, "what is already possible with this Library.", 15)
    .setPosition((width/48*11.5), (height/32)*22)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#190034));

  page1.addWidget(new Button(this, width/15, height/30, "Beastybuttons", true)
    .setPosition((width/48*7.5), (height/32)*24)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#FF6277)
    .setOvercolor(#FF6277)
    .setClickcolor(#FF0022)
    .setOutlineWidth(0)
    .onLeftClick("openBB"));

  page1.addWidget(new Button(this, width/15, height/30, "Processing", true)
    .setPosition((width/48*11.5), (height/32)*24)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#6E4489)
    .setOvercolor(#6E4489)
    .setClickcolor(#FF0022)
    .setOutlineWidth(0)
    .onLeftClick("openProcessing"));


  //Top Panel
  page1.addWidget(new BB_Image(this, "Panel.png")
    .setPosition("left", "top"));

  Button s1p1 = new Button(this, "Welcome", 15)
    .setPosition((width/50)*10, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToWelcome");  
  if (s1p1 != null) {
    s1p1.setSize(s1p1.getSize()[0]*0.8, s1p1.getSize()[1]*0.9, false);
  } 
  page1.addWidget(s1p1);

  Button s1p2 = new Button(this, "Dashboard", 15)
    .setPosition((width/50)*13, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToDashboard");  
  if (s1p2 != null) {
    s1p2.setSize(s1p2.getSize()[0]*0.8, s1p2.getSize()[1]*0.9, false);
  } 
  page1.addWidget(s1p2);

  Button s1p3 = new Button(this, "Calendar", 15)
    .setPosition((width/50)*16, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToCalendar");  
  if (s1p3 != null) {
    s1p3.setSize(s1p3.getSize()[0]*0.8, s1p3.getSize()[1]*0.9, false);
  } 
  page1.addWidget(s1p3);

  Button s1p4 = new Button(this, "Tasks", 15)
    .setPosition((width/50)*18.3, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToTasks");  
  if (s1p4 != null) {
    s1p4.setSize(s1p4.getSize()[0]*0.8, s1p4.getSize()[1]*0.9, false);
  } 
  page1.addWidget(s1p4);

  page1.addWidget(new Button(this, width/15, height/30, "Exit", true)
    .setPosition((width/48*46), height/48)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#FF6277)
    .setOvercolor(#FF6277)
    .setClickcolor(#FF0022)
    .setOutlineWidth(0)
    .onLeftClick("exitApplication"));

  world.addSurface(page1);

  //Dashboard setup
  page2 = new BeastySurface(this)
    .setID("Dashboard")
    .setSurfaceColor(#151313);

  page2.addWidget(new Label(this, "", 30, true)
    .setPosition(width/8, (height/8)*3)
    .setSize(width/5, height/2, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "Widgets", 30)
    .setPosition(width/8, (height/8)*1.7)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new BB_Image(this, "Widgets.PNG")
    .setScaleFactor(0.45, 0.45)
    .setPosition(width/8, (height/8)*3.5));

  page2.addWidget(new Label(this, "", 30, true)
    .setPosition(width/8, (height/8)*6.5)
    .setSize(width/5, height/3, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new BB_Image(this, "Pie Chart.png")
    .setScaleFactor(0.45, 0.45)
    .setPosition(width/8, (height/8)*6.5)
    .cropImage("left", 120)
    .cropImage("right", 120)
    .cropImage("top", 50)
    .cropImage("bottom", 50));

  page2.addWidget(new Label(this, "", 30, true)
    .setPosition((width/8)*2.7, (height/8)*3)
    .setSize(width/5, height/2, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "Dev Widgets", 30)
    .setPosition((width/8)*2.7, (height/8)*1.7)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new BB_Image(this, "Dev Widgets.PNG")
    .setScaleFactor(0.45, 0.45)
    .setPosition((width/8)*2.7, (height/8)*3.5));

  page2.addWidget(new Label(this, "", 30, true)
    .setPosition((width/8)*4.4, (height/8)*3)
    .setSize(width/5, height/2, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "Project Info", 30, true)
    .setPosition((width/8)*4.4, (height/8)*1.7)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  String info = "BB_Version: v1.4.0\nPR_Version: v3.5.4";
  page2.addWidget(new Label(this, info, 20)
    .setPosition((width/8)*4.4, (height/8)*2.5)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "Type: Open Source", 20)
    .setPosition((width/8)*4.4, (height/8)*3)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "Dependencies:", 20)
    .setPosition((width/8)*4.4, (height/8)*3.5)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "- Processing:", 20)
    .setPosition((width/8)*4.4, (height/8)*3.9)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "- Beastybuttons", 20)
    .setPosition((width/8)*4.4, (height/8)*4.3)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "", 30, true)
    .setPosition((width/8)*3.9, (height/8)*6.5)
    .setSize(width/2, height/3, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new BB_Image(this, "BeastybuttonsLogo.png")
    .setScaleFactor(0.45, 0.45)
    .setPosition((width/4)*1.3, (height/8)*6.5));

  String description = "Beastybuttons is a simple GUI Library for Processing. Its main goal\nis to combine complex functionality with code that is very simple\nto understand. It also provides multiple handy features such as\na Logging-System, importing or exporting files or automatic positioning\nof widgets in specific cases. There is also an own color-datatype that allows\nthe use of HTML color codes with Beastybuttons. For a more detailed\ndescription check out the Beastybuttons Website and for new developed\n features check out the Beastybuttons Github Repository.";
  page2.addWidget(new Label(this, (width/8)*3, (height/8)*4.3, description, true)
    .setPosition((width/8)*4.2, (height/8)*6.5)
    .setSize(width/3, height/3, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45))
    .setTextoffset(0, height/30));

  page2.addWidget(new Label(this, "", 30, true)
    .setPosition((width/8)*6.9, (height/8)*6.5)
    .setSize(width/4.5, height/3, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Button(this, "Github Link Button", 30)
    .setPosition((width/8)*6.9, (height/8)*6.5)
    .setSize(width/4.5, height/3, false)
    .hide(true)
    .onLeftClick("openGH"));

  page2.addWidget(new BB_Image(this, "GithubLogo.png")
    .setScaleFactor(0.05, 0.05)
    .setPosition((width/8)*6.9, (height/8)*6.5));

  page2.addWidget(new Label(this, "", 30, true)
    .setPosition((width/8)*6.55, (height/8)*3)
    .setSize(width/3.25, height/2, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  page2.addWidget(new Label(this, "Disclaimer", 30)
    .setPosition((width/8)*6.55, (height/8)*1.7)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  String disclaimer = "This Project is not related to the real state of\ndevelopment of Beastybuttons. Its only purpose is to\n show the functionality of Beastybuttons";
  page2.addWidget(new Label(this, width/3.25, height/4, disclaimer)
    .setPosition((width/8)*6.55, (height/8)*3)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  //Top Panel
  page2.addWidget(new BB_Image(this, "Panel.png")
    .setPosition("left", "top"));

  Button s2p1 = new Button(this, "Welcome", 15)
    .setPosition((width/50)*10, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToWelcome");  
  if (s2p1 != null) {
    s2p1.setSize(s2p1.getSize()[0]*0.8, s2p1.getSize()[1]*0.9, false);
  } 
  page2.addWidget(s2p1);

  Button s2p2 = new Button(this, "Dashboard", 15)
    .setPosition((width/50)*13, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToDashboard");  
  if (s2p2 != null) {
    s2p2.setSize(s2p2.getSize()[0]*0.8, s2p2.getSize()[1]*0.9, false);
  } 
  page2.addWidget(s2p2);

  Button s2p3 = new Button(this, "Calendar", 15)
    .setPosition((width/50)*16, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToCalendar");  
  if (s1p3 != null) {
    s2p3.setSize(s2p3.getSize()[0]*0.8, s2p3.getSize()[1]*0.9, false);
  } 
  page2.addWidget(s2p3);

  Button s2p4 = new Button(this, "Tasks", 15)
    .setPosition((width/50)*18.3, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToTasks");  
  if (s2p4 != null) {
    s2p4.setSize(s2p4.getSize()[0]*0.8, s2p4.getSize()[1]*0.9, false);
  } 
  page2.addWidget(s2p4);

  page2.addWidget(new Button(this, width/15, height/30, "Exit", true)
    .setPosition((width/48*46), height/48)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#FF6277)
    .setOvercolor(#FF6277)
    .setClickcolor(#FF0022)
    .setOutlineWidth(0)
    .onLeftClick("exitApplication"));

  world.addSurface(page2);


  //Calendar setup
  page3 = new BeastySurface(this)
    .setID("Calendar")
    .setSurfaceColor(#151313);

  page3.addWidget(new Label(this, "", 30, true)
    .setPosition(width/2, height/2)
    .setSize(width/1.1, height/1.15, false)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(color(49, 45, 45)));

  ArrayList<String> dates = new ArrayList();
  dates.add("01.12.");
  dates.add("06.12.");
  dates.add("07.12.");
  dates.add("12.12.");
  dates.add("13.12.");
  dates.add("17.12.");
  dates.add("20.12.");

  for (int i = 1; i < 8; i++) {
    page3.addWidget(new Label(this, dates.get(i-1), 30, true)
      .setPosition(width/8, (height/8)*i)
      .setSize(width/15, width/30, false));
  }

  ArrayList<String> points = new ArrayList();
  points.add("Fix Beastybuttons Bugs");
  points.add("Update Beastybuttons Github Repository");
  points.add("Update Beastybuttons Website");
  points.add("Request Add to Processing Library Manager");
  points.add("Update Suggestions from the Processing Team");
  points.add("Add more Examples until the Processing Team is happy");
  points.add("Publish Library on Processing");

  for (int i = 1; i < 8; i++) {
    page3.addWidget(new Label(this, points.get(i-1), 30, true)
      .setPosition(width/2, (height/8)*i)
      .setSize(width/1.7, width/30, false));
  }

  page3.addWidget(new Label(this, "D\nE\nC\nE\nM\nB\nE\nR", 30, true)
    .setPosition((width/8)*7, height/2)
    .setSize(width/20, height/1.3, false)
    .setTextoffset(0, width/40));

  //Top Panel
  page3.addWidget(new BB_Image(this, "Panel.png")
    .setPosition("left", "top"));

  Button s3p1 = new Button(this, "Welcome", 15)
    .setPosition((width/50)*10, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToWelcome");  
  if (s3p1 != null) {
    s3p1.setSize(s3p1.getSize()[0]*0.8, s3p1.getSize()[1]*0.9, false);
  } 
  page3.addWidget(s3p1);

  Button s3p2 = new Button(this, "Dashboard", 15)
    .setPosition((width/50)*13, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToDashboard");  
  if (s3p2 != null) {
    s3p2.setSize(s3p2.getSize()[0]*0.8, s3p2.getSize()[1]*0.9, false);
  } 
  page3.addWidget(s3p2);

  Button s3p3 = new Button(this, "Calendar", 15)
    .setPosition((width/50)*16, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToCalendar");  
  if (s3p3 != null) {
    s3p3.setSize(s3p3.getSize()[0]*0.8, s3p3.getSize()[1]*0.9, false);
  } 
  page3.addWidget(s3p3);

  Button s3p4 = new Button(this, "Tasks", 15)
    .setPosition((width/50)*18.3, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToTasks");  
  if (s3p4 != null) {
    s3p4.setSize(s3p4.getSize()[0]*0.8, s3p4.getSize()[1]*0.9, false);
  } 
  page3.addWidget(s3p4);

  page3.addWidget(new Button(this, width/15, height/30, "Exit", true)
    .setPosition((width/48*46), height/48)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#FF6277)
    .setOvercolor(#FF6277)
    .setClickcolor(#FF0022)
    .setOutlineWidth(0)
    .onLeftClick("exitApplication"));

  world.addSurface(page3);

  //Tasks setup
  page4 = new BeastySurface(this)
    .setID("Tasks")
    .setSurfaceColor(#151313);

  page4.addWidget(new Label(this, "", 30, true)
    .setPosition(width/4, height/2)
    .setSize(width/3, height/1.15, false)
    .setForegroundColor(color(0, 0, 0))
    .setBackgroundColor(BB_Color.APRICOT));
    
  page4.addWidget(new Label(this, "", 30, true)
  .setPosition((width/4)*3, height/2)
  .setSize(width/3, height/1.15, false)
  .setForegroundColor(color(0, 0, 0))
  .setBackgroundColor(BB_Color.APRICOT));
  
  
  ArrayList<String> tasks_left = new ArrayList();
  tasks_left.add("debug printouts");
  tasks_left.add("rewrite import");
  tasks_left.add("rewrite export");
  tasks_left.add("virtual keyboard");
  tasks_left.add("fix handlers");
  
  ArrayList<String> tasks_right = new ArrayList();
  tasks_right.add("fix copySettings");
  tasks_right.add("animate surfaces");
  tasks_right.add("Visual Builder");
  
  for(int i = 1; i < 6; i++){
    page4.addWidget(new Checkbox(this, width/50, false)
    .setPosition(width/8, (height/8)*i)
    .setChecktype("check")
    .setForegroundColor(color(0, 0, 0))
    .setBackgroundColor(BB_Color.APRICOT)
    .setOvercolor(BB_Color.APRICOT)
    .setClickcolor(color(0, 0, 0))
    .setOutlineWidth(1));
    
    
    page4.addWidget(new Label(this, tasks_left.get(i-1), 30)
    .setPosition((width/8)*2, (height/8)*i)
    .setForegroundColor(color(0, 0, 0))
    .setBackgroundColor(BB_Color.APRICOT)
    .setFont("Candara-Light-48.vlw"));
  }
  
  for(int i = 1; i < 4; i++){
    page4.addWidget(new Checkbox(this, width/50, false)
    .setPosition((width/8)*5, (height/8)*i)
    .setChecktype("check")
    .setForegroundColor(color(0, 0, 0))
    .setBackgroundColor(BB_Color.APRICOT)
    .setOvercolor(BB_Color.APRICOT)
    .setClickcolor(color(0, 0, 0))
    .setOutlineWidth(1));
    
    
    page4.addWidget(new Label(this, tasks_right.get(i-1), 30)
    .setPosition((width/8)*6, (height/8)*i)
    .setForegroundColor(color(0, 0, 0))
    .setBackgroundColor(BB_Color.APRICOT)
    .setFont("Candara-Light-48.vlw"));
  }

  //Top Panel
  page4.addWidget(new BB_Image(this, "Panel.png")
    .setPosition("left", "top"));

  Button s4p1 = new Button(this, "Welcome", 15)
    .setPosition((width/50)*10, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToWelcome");  
  if (s4p1 != null) {
    s4p1.setSize(s4p1.getSize()[0]*0.8, s4p1.getSize()[1]*0.9, false);
  } 
  page4.addWidget(s4p1);

  Button s4p2 = new Button(this, "Dashboard", 15)
    .setPosition((width/50)*13, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToDashboard");  
  if (s4p2 != null) {
    s4p2.setSize(s4p2.getSize()[0]*0.8, s4p2.getSize()[1]*0.9, false);
  } 
  page4.addWidget(s4p2);

  Button s4p3 = new Button(this, "Calendar", 15)
    .setPosition((width/50)*16, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToCalendar");  
  if (s4p3 != null) {
    s4p3.setSize(s4p3.getSize()[0]*0.8, s4p3.getSize()[1]*0.9, false);
  } 
  page4.addWidget(s4p3);

  Button s4p4 = new Button(this, "Tasks", 15)
    .setPosition((width/50)*18.3, height/45)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#19181A)
    .setOvercolor(#19181A)
    .setClickcolor(#19181A)
    .setOutlineWidth(0)
    .onLeftClick("changeToTasks");  
  if (s4p4 != null) {
    s4p4.setSize(s4p4.getSize()[0]*0.8, s4p4.getSize()[1]*0.9, false);
  } 
  page4.addWidget(s4p4);

  page4.addWidget(new Button(this, width/15, height/30, "Exit", true)
    .setPosition((width/48*46), height/48)
    .setForegroundColor(color(255, 255, 255))
    .setBackgroundColor(#FF6277)
    .setOvercolor(#FF6277)
    .setClickcolor(#FF0022)
    .setOutlineWidth(0)
    .onLeftClick("exitApplication"));

  world.addSurface(page4);

  world.surface_jump_transition("Welcome");
}

void draw() {
}

void openGH() {
  link("https://github.com/PicoLuetjens/Beastybuttons");
}

void openBB() {
  link("https://plhoster.github.io/BeastyButtons/");
}

void openProcessing() {
  link("https://processing.org");
}

void changeToWelcome() {
  world.surface_jump_transition("Welcome");
}

void changeToDashboard() {
  world.surface_jump_transition("Dashboard");
}

void changeToCalendar() {
  world.surface_jump_transition("Calendar");
}

void changeToTasks() {
  world.surface_jump_transition("Tasks");
}

void exitApplication() {
  exit();
}
