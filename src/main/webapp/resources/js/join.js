 function move_container_id_div(){
        var id_div = document.getElementById("container_id_div");
        var id_input = document.getElementById("container_id_input");

        id_div.style.fontSize = "10px";
        id_div.style.bottom = "691px";
        id_input.style.borderBottom = "1px solid #4f9f4f";
      }
      function move_container_id_div_return(){
        var id_div = document.getElementById("container_id_div");
        var id_input = document.getElementById("container_id_input");

        if(id_input.value == ""){
          id_div.style.fontSize = "16px";
          id_div.style.bottom = "661px";
          id_input.style.borderBottom = "2px solid #efc515";
        }
      }
      function move_container_pw_div(){
        var pw_div = document.getElementById("container_pw_div");
        var pw_input = document.getElementById("container_pw_input");

        pw_div.style.fontSize = "10px";
        pw_div.style.bottom = "611px";
        pw_input.style.borderBottom = "1px solid #4f9f4f";
      }
      function move_container_pw_div_return(){
        var pw_div = document.getElementById("container_pw_div");
        var pw_input = document.getElementById("container_pw_input");

        if(pw_input.value == ""){
          pw_div.style.fontSize = "16px";
          pw_div.style.bottom = "581px";
          pw_input.style.borderBottom = "2px solid #efc515";
        }
      }
      function move_container_pwcheck_div(){
        var pwcheck_div = document.getElementById("container_pwcheck_div");
        var pwcheck_input = document.getElementById("container_pwcheck_input");

        pwcheck_div.style.fontSize = "10px";
        pwcheck_div.style.bottom = "531px";
        pwcheck_input.style.borderBottom = "1px solid #4f9f4f";
      }
      function move_container_pwcheck_div_return(){
        var pwcheck_div = document.getElementById("container_pwcheck_div");
        var pwcheck_input = document.getElementById("container_pwcheck_input");
        var pw_input = document.getElementById("container_pw_input");

        if(pwcheck_input.value == ""){
          pwcheck_div.innerHTML = "비밀번호를 입력해주세요.";
          pwcheck_div.style.fontSize = "16px";
          pwcheck_div.style.bottom = "501px";
          pwcheck_input.style.borderBottom = "2px solid #efc515";
        }else{
          if(pwcheck_input.value != pw_input.value){
            pwcheck_div.innerHTML = "비밀번호가 일치하지 않습니다.";
            pwcheck_div.style.color = "#f00";
            pwcheck_input.style.borderBottom = "2px solid #f00";
          }else{
            pwcheck_div.innerHTML = "비밀번호가 일치합니다.";
            pwcheck_div.style.fontSize = "10px";
            pwcheck_div.style.bottom = "531px";
            pwcheck_div.style.color = "#4f9f4f";
            pwcheck_input.style.borderBottom = "1px solid #4f9f4f";
          }
        }
      }
      function move_container_name_div(){
        var name_div = document.getElementById("container_name_div");
        var name_input = document.getElementById("container_name_input");

        name_div.style.fontSize = "10px";
        name_div.style.bottom = "451px";
        name_input.style.borderBottom = "1px solid #4f9f4f";
      }
      function move_container_name_div_return(){
        var name_div = document.getElementById("container_name_div");
        var name_input = document.getElementById("container_name_input");

        if(name_input.value == ""){
          name_div.style.fontSize = "16px";
          name_div.style.bottom = "421px";
          name_input.style.borderBottom = "2px solid #efc515";
        }
      }
      function move_container_birth_div(){
        var birth_div = document.getElementById("container_birth_div");
        var birth_input = document.getElementById("container_birth_input");

        birth_div.style.fontSize = "10px";
        birth_div.style.bottom = "371px";
        birth_input.style.borderBottom = "1px solid #4f9f4f";
      }
      function move_container_birth_div_return(){
        var birth_div = document.getElementById("container_birth_div");
        var birth_input = document.getElementById("container_birth_input");

        if(birth_input.value == ""){
          birth_div.style.fontSize = "16px";
          birth_div.style.bottom = "341px";
          birth_input.style.borderBottom = "2px solid #efc515";
        }
      }
      function move_container_email_div(){
        var email_div = document.getElementById("container_email_div");
        var email_input = document.getElementById("container_email_input");

        email_div.style.fontSize = "10px";
        email_div.style.bottom = "291px";
        email_input.style.borderBottom = "1px solid #4f9f4f";
      }
      function move_container_email_div_return(){
        var email_div = document.getElementById("container_email_div");
        var email_input = document.getElementById("container_email_input");

        if(email_input.value == ""){
          email_div.style.fontSize = "16px";
          email_div.style.bottom = "261px";
          email_input.style.borderBottom = "2px solid #efc515";
        }
      }
      function move_container_phone_div(){
        var phone_div = document.getElementById("container_phone_div");
        var phone_input = document.getElementById("container_phone_input");

        phone_div.style.fontSize = "10px";
        phone_div.style.bottom = "211px";
        phone_input.style.borderBottom = "1px solid #4f9f4f";
      }
      function move_container_phone_div_return(){
        var phone_div = document.getElementById("container_phone_div");
        var phone_input = document.getElementById("container_phone_input");

        if(phone_input.value == ""){
          phone_div.style.fontSize = "16px";
          phone_div.style.bottom = "181px"
          phone_input.style.borderBottom = "2px solid #efc515";
        }
      }
      function joinchk(){
        var id_input = document.getElementById("container_id_input");
        var pw_input = document.getElementById("container_pw_input");
        var pwcheck_input = document.getElementById("container_pwcheck_input");
        var name_input = document.getElementById("container_name_input");
        var birth_input = document.getElementById("container_birth_input");
        var email_input = document.getElementById("container_email_input");
        var phone_input = document.getElementById("container_phone_input");

        if((id_input.value == "") || (pw_input.value == "") || (pwcheck_input.value == "") || (name_input.value == "") || (birth_input.value == "") || (email_input.value == "") || (phone_input.value == "")){
          alert("빈 항목을 작성해주세요");

          return false;
        }else if(pwcheck_input.value != pw_input.value){
          alert("비밀번호가 일치하지 않습니다.");

          return false;
        }else{
          return true;
        }
      }