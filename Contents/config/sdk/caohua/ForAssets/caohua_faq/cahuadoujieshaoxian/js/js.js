(function(){
	
	
	
	
	//测试数据
	var arr=[1,1,1,-1,-1,1];
	
	
	
	var thisArr=[];
	var DrArr=[];
	var MyDay=$('.Date');
	var MyDate=new Date();
    var MD=MyDate.getDate();
   

    $('.date').html(MyDate.getFullYear()+'年'+(MyDate.getMonth()+1)+'月');
    //设置连续签到天数
    $('#leiJ').html(SetLx());
    //补签
    var buQTxt='<div class="icon" type="-1">'
			+'<img src="images/bq.png"/>'
			+'<div class="day DLeft buQ">';
	//已签到			
    var yiQDTxt='<div class="icon" type="1">'
			+'<img src="images/qd.png"/>'
			+'<div class="day yq">';
	//待签
	var daiQTxt='<div class="icon" type="2">'
			+'<img src="images/dq.png"/>'
			+'<div class="day">';
	//签到		
	var qDaoTxt='<img class="W98" type="0" src="images/dr.png"/>'
			+'<div class="icon pA" type="0">'
			+'<div class="day">';
	
	//获取星期几
	function getWeekDayNextMonth(){
		var myDate = new Date();
		myDate.setMonth(myDate.getMonth());
		myDate.setDate(1);
		return myDate.getDay();
	}
	
	//获取天数
	function getCountDays() {
        var curDate = new Date();
        /* 获取当前月份 */
        var curMonth = curDate.getMonth();
       /*  生成实际的月份: 由于curMonth会比实际月份小1, 故需加1 */
       curDate.setMonth(curMonth + 1);
       /* 将日期设置为0, 表示上一个月的最后一天 */
       curDate.setDate(0);
       /* 返回当月的天数 */
       return curDate.getDate();
	}
	
	var week=getWeekDayNextMonth();
	var Time=getCountDays();
	var index=0;
	var str='';
	MyDay.each(function(n){
		if(week<=n){
			if(index>=Time) return;
			var x=++index;
			var str=status(arr[index-1]);
			$(this).html(str+x+'</div></div>');
			if(MD==x){
				DrArr.push($(this));
				$(this).html(qDaoTxt+x+'</div></div>');
			}
		}
	});
	
	function status(n){
		switch(n){
			case 1:return yiQDTxt;
				break;
			case 0:return qDaoTxt;
				break;
			case -1:return buQTxt;
				break;
			default:return daiQTxt
				break;
		}
	}
	
	MyDay.on('tap',function(){
		var state=parseInt($(this).find('.icon').attr('type'));
		if(state>1) return;
		if(state==0){
			$('#Qdsuess').animate({'display':'block','opacity':1},500);
			$('html,body').css('overflow','hidden');
		}
		if(state==-1){
			var x=$('#buQCount').html();
			if(x<=0){alert('您的补签次数不足');return;}
			$('#buQ').animate({'display':'block','opacity':1},500);
			$('html,body').css('overflow','hidden');
			thisArr.push($(this));
		}
	});
			
	//关闭弹窗
	$('.exit').on('tap',function(){
		if(DrArr.length>0){
			var day=DrArr[0].find('.day').html();
			DrArr[0].html(yiQDTxt+day+'</div></div>');
			DrArr=[];
		}
		hide($(this));
		$('.btn').attr('status',0);
		$('.btn').find('img').attr('src','images/yqd.png');
		arr.splice(--day,1,1);
		$('#leiJ').html(SetLx());
	});
		
	var btnChang=null;
	$('.btn').on('tap',function(){
		var a=$(this).attr('status');
		if(a!=1){return;}	
		$('#Qdsuess').animate({'display':'block','opacity':1},500);
		//thisArr.push($(this));
		$(this).attr('status',0);
	});
				console.log(arr)
	//补签确定按钮
	$('.enter').on('touchstart click',function(){
		var x=$('#buQCount').html();
		if(x<=0){return}
		if(thisArr.length>0){
			var day=thisArr[0].find('.day').html();
			thisArr[0].html(yiQDTxt+day+'</div></div>');
			arr.splice(--day,1,1);
			thisArr=[];
			$('#leiJ').html(SetLx());
		}
		
		$('#buQCount').html(--x);
		$('#bqC').html(x);
		hide($(this));
	});
	
	$('.black').on('tap',function(){
		thisArr=[];
		hide($(this));
	});
	$('.madel').on('tap',function(){return false;});
	
	var LxArr=null;
	$('.giftBtn').on('tap',function(){
		if($(this).attr('status')==0){
			$('#Lx').animate({'display':'block','opacity':1},500);
			LxArr=$(this);
		}
	});
	
	$('.LxEnter').on('tap',function(){
		hide($(this));
		LxArr.addClass('ylqBG').html('已领取')
	});
	
	function SetLx(){
		var x=0;
		arr.forEach(function(a,b,c){
			if(a==-1){
				x=0;
			}else{
				x++;
			}
			
		});
		
		return x;
	}
	
	
	function hide(e){
		$('html,body').css('overflow','auto');
		e.parents('.madel').hide();
	}
})()
