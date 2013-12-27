              ,afterAdd: function (source, newForm) {
                var sorders = $('.selectionorders');
                var f;
                var ssize = sorders.size();
		if(ssize == 0) {
		    return;
		}
                var num = 0;
                var beforeNum = 0;
                $(sorders).each(function () {
                  num++;
                  var id = this.id;
                  if (/(\d+)_order/.test(id)) {
                    f = RegExp.$1;
                  } else {
                    f = "1";
                  }
                  if (f == "0") {
                    beforeNum = 0;
                  }
                  if ($(this).val() != undefined && $(this).val() !=  null && $(this).val() !== "") {
                    beforeNum = $(this).val();
                  } else {
		    if(isFinite(beforeNum)) {
			this.value = parseInt(beforeNum) + 1;
			beforeNum = parseInt(beforeNum) + 1;
		    }
                  }
                });
              }
