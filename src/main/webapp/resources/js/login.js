var id_div = $('.container_id_div');
var id_input = $('.container_id_input');
var pw_div = $('.container_pw_div');
var pw_input = $('.container_pw_input');

id_input.on({
    focus: function() {
        id_div.css({
            'fontSize': '10px',
            'bottom': '218px'
        });
        id_input.css('borderBottom', '2px solid #4f9f4f');
    },
    blur: function() {
        if (id_input.val() == "") {
            id_div.css({
                'fontSize': '16px',
                'bottom': '188px'
            });
            id_input.css('borderBottom', '1px solid #c0c0c0');
        }
    }
});

pw_input.on({
    focus: function() {
        pw_div.css({
            'fontSize': '10px',
            'bottom': '110px'
        });
        pw_input.css('borderBottom', '2px solid #4f9f4f');
    },
    blur: function() {
        if (pw_input.val() == "") {
            pw_div.css({
                'fontSize': '16px',
                'bottom': '80px'
            });
            pw_input.css('borderBottom', '2px solid #c0c0c0');
        }
    }
});
