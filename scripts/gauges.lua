


hpbar = Geyser.Gauge:new({
  name="hpbar",
  x=0, y=-59,
  width=240, height="18px", bottom_container_gauges 
})
hpbar:setStyleSheet(
    [[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #f04141, stop: 0.1 #ef2929, stop: 0.49 #cc0000, stop: 0.75 #a40000, stop: 1 #cc0000);
border-top: 1px black solid;
border-left: 1px black solid;
border-bottom: 1px black solid;
border-radius: 7;
padding: 3px;]],
[[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #bd3333, stop: 0.1 #bd2020, stop: 0.49 #990000, stop: 0.75 #700000, stop: 1 #990000);
border-width: 1px;
border-color: black;
border-style: solid;
border-radius: 7;
padding: 3px;]])

mabar = Geyser.Gauge:new({
  name="mabar",
  x=0, y=-39,
  width=240, height="18px", bottom_container_gauges
})
mabar.front:setStyleSheet(
    [[background-color: QLinearGradient( 
    x1: 0, y1: 0, x2: 0, y2: 1, 
    stop: 0 #f37efb, 
    stop: 0.1 #f248fd, 
    stop: 0.49 #f000ff,
    stop: 0.75 #b600c1, 
    stop: 1 #83008b);    
    
    border-top: 1px black solid;
    border-left: 1px black solid;
    border-bottom: 1px black solid;
    border-radius: 7;
    padding: 3px;
]],[[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #78bd33, stop: 0.1 #6ebd20, stop: 0.49 #4c9900, stop: 0.75 #387000, stop: 1 #4c9900);
    border-width: 1px;
    border-color: black;
    border-style: solid;
    border-radius: 7;
    padding: 3px;
]])


mvbar = Geyser.Gauge:new({
  name="mvbar",
  x=0, y=-19,
  width=240, height="18px", bottom_container_gauges 
})
mvbar.front:setStyleSheet(
    [[background-color: QLinearGradient( 
    x1: 0, y1: 0, x2: 0, y2: 1, 
    stop: 0 #66a8f2, 
    stop: 0.1 #257ddf, 
    stop: 0.49 #0d34bf,
    stop: 0.5 #3525df, 
    stop: 1 #181076);
        
    border-top: 1px black solid;
    border-left: 1px black solid;
    border-bottom: 1px black solid;
    border-radius: 7;
    padding: 3px;
]],
  [[background-color: QLinearGradient( x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 #78bd33, stop: 0.1 #6ebd20, stop: 0.49 #4c9900, stop: 0.75 #387000, stop: 1 #4c9900);
    border-width: 1px;
    border-color: black;
    border-style: solid;
    border-radius: 7;
    padding: 3px;
]])
