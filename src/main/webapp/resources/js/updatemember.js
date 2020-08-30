var id_div = $('.container_id_div');
var id_input = $('.container_id_input');
var pw_div = $('.container_pw_div');
var pw_input = $('.container_pw_input');
var pwcheck_div = $('.container_pwcheck_div');
var pwcheck_input = $('.container_pwcheck_input');
var name_div = $('.container_name_div');
var name_input = $('.container_name_input');
var addr_div = $('.container_addr_div');
var addr_input = $('.container_addr_input');
var email_div = $('.container_email_div');
var email_input = $('.container_email_input');
var phone_div = $('.container_phone_div');
var phone_input = $('.container_phone_input');

id_input.on({
	focus : function(){
		id_div.css({'fontSize' : '10px', 'bottom' : '557px'});
	    id_input.css('borderBottom', '1px solid #4f9f4f');
	},
	blur : function(){
		if (id_input.val() == "") {
	        id_div.css({'fontSize' : '16px', 'bottom' : '527px'});
	        id_input.css('borderBottom', '2px solid #efc515');
	    }
	}
});

pw_input.on({
	focus : function(){
		pw_div.css({'fontSize' : '10px', 'bottom' : '477px'});
	    pw_input.css('borderBottom', '1px solid #4f9f4f');
	},
	blur : function(){
		if (pw_input.val() == "") {
	        pw_div.css({'fontSize' : '16px', 'bottom' : '447px'});
	        pw_input.css('borderBottom', '2px solid #efc515');
	    }
	},
	keyup : function(){
        if (pwcheck_input.val() != pw_input.val()) {
            pwcheck_div.html("비밀번호가 일치하지 않습니다.");
            pwcheck_div.css('color', '#f00');
            pwcheck_input.css('borderBottom', '2px solid #f00');
        } else {
            pwcheck_div.html("비밀번호가 일치합니다.");
            pwcheck_div.css({'fontSize' : '10px', 'bottom' : '397px', 'color' : '#4f9f4f'});
            pwcheck_input.css('borderBottom', '1px solid #4f9f4f');
        }
	}
});

pwcheck_input.on({
	focus : function(){
		pwcheck_div.css({'fontSize' : '10px', 'bottom' : '397px'});
	    pwcheck_input.css('borderBottom', '1px solid #4f9f4f');
	},
	blur : function(){
		if (pwcheck_input.val() == "") {
	        pwcheck_div.html("비밀번호를 입력해주세요.");
	        pwcheck_div.css({'fontSize' : '16px', 'bottom' : '367px'});
	        pwcheck_input.css('borderBottom', '2px solid #efc515');
	    }
	},
	keyup : function(){
        if (pwcheck_input.val() != pw_input.val()) {
            pwcheck_div.html("비밀번호가 일치하지 않습니다.");
            pwcheck_div.css('color', '#f00');
            pwcheck_input.css('borderBottom', '2px solid #f00');
        } else {
            pwcheck_div.html("비밀번호가 일치합니다.");
            pwcheck_div.css({'fontSize' : '10px', 'bottom' : '397px', 'color' : '#4f9f4f'});
            pwcheck_input.css('borderBottom', '1px solid #4f9f4f');
        }
	}
});

name_input.on({
	focus : function(){
		name_div.css({'fontSize' : '10px', 'bottom' : '317px'});
	    name_input.css('borderBottom', '1px solid #4f9f4f');
	},
	blur : function(){
		if (name_input.val() == "") {
	        name_div.css({'fontSize' : '16px', 'bottom' : '287px'});
	        name_input.css('borderBottom', '2px solid #efc515');
	    }
	}
});

addr_input.on({
	focus : function(){
		addr_div.css({'fontSize' : '10px', 'bottom' : '237px'});
	    addr_input.css('borderBottom', '1px solid #4f9f4f');
	},
	blur : function(){
		if (addr_input.val() == "") {
	        addr_div.css({'fontSize' : '16px', 'bottom' : '207px'});
	        addr_input.css('borderBottom', '2px solid #efc515');
	    }
	}
});

email_input.on({
	focus : function(){
		email_div.css({'fontSize' : '10px', 'bottom' : '157px'});
	    email_input.css('borderBottom', '1px solid #4f9f4f');
	},
	blur : function(){
		if (email_input.val() == "") {
	        email_div.css({'fontSize' : '16px', 'bottom' : '127px'});
	        email_input.css('borderBottom', '2px solid #efc515');
	    }
	}
});

phone_input.on({
	focus : function(){
		phone_div.css({'fontSize' : '10px', 'bottom' : '77px'});
	    phone_input.css('borderBottom', '1px solid #4f9f4f');
	},
	blur : function(){
		if (phone_input.val() == "") {
	        phone_div.css({'fontSize' : '16px', 'bottom' : '47px'});
	        phone_input.css('borderBottom', '2px solid #efc515');
	    }
	}
});

$('.container_update_input').on('click' , function(){
	// 정규표현식
	var phonereg = /^01(0|1|[6-9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
	var emailreg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]*\.[a-zA-Z]{2,3}$/i;
	
	if ((id_input.val() == "") || (pw_input.val() == "") || (pwcheck_input.val() == "") || (name_input.val() == "") || (addr_input.val() == "") || (email_input.val() == "") || (phone_input.val() == "")) {
        alert("빈 항목을 작성해주세요");

        return false;
    }
	
	if(!(emailreg.test(email_input.val()))){
		alert('올바르지 않은 이메일 주소입니다.');	
		
		return false;
	}
	
	
	if (pwcheck_input.val() != pw_input.val()) {
        alert("비밀번호가 일치하지 않습니다.");

        return false;
    } 
	
	if (!(phonereg.test(phone_input.val()))){
		alert('올바르지 않은 휴대폰 번호입니다.');		
		
		return false;
	} 
	
    return true;
})