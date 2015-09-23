
window.setFrame(0,0,320,480);


function createButton( text , x,y,w,h, callback) {
	local button = UIButton();
	button.setFrame(x,y,w,h);
	button.setText(text);
	button.backgroundColor(0xeeeeee);
	button.delegate = ^(){
		print("ok",button);
		if( callback ) {
			callback();
		}
	};
	return button;
}

button1 = createButton("测试",10,10,300,60);



button2 = UIButton();
button2.setFrame(10,100+80,100,100);
button2.setImage("http://g.alicdn.com/ju/lua/2.0.25/doc/icon.png","http://g.alicdn.com/ju/lua/2.0.25/doc/icon2.png");


button2.delegate = ^(){
	print("我是图片按钮");
    button2.sizeToFit();
}


	-- print("clear");
	-- System.gc();
	-- collectgarbage("collect");
	-- local memory = collectgarbage("count");
	-- print("memory: ", memory );