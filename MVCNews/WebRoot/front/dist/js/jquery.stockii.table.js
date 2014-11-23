/**
 * 
 */

;(function ($, window) {
	
	var StockiiTable = function(element, options) {
		this.element = element;
		this.defaults = {
			columns: [{
				id:"1",
			    name: "colomn1",
			    width: 50,
			    align: "left",
			   	},
			    {
			    id:"2",
			    name: "colomn2",
			    width: 50,
			    align: "left",
			    }
			],
			theme: "",
			src:"",
			pageSize: 100,
			pageNumber: 1,
			ajax: function () {
			},
			simpleMode: false,
		};
		this.options = $.extend({}, this.defaults, options);
	};
	
	StockiiTable.prototype = {
		init: function() {
			// 生成表头
			var tableHead = $("<tr></tr>");
			tableHead.addClass(this.options.theme);
			for(var i = 0; i < this.options.columns.length; i ++) {
				var each = this.options.columns[i];
				tableHead.append(
					$("<td></td>")
					.html(each.name)
					.css({"width": each.width + "%",
						"text-align": each.align,
					}));
			}
			this.element.append(tableHead);
			
			// 生成表内容
			var result = this.options.ajax();
			for(var i = 0; i < result.length; i++) {
				var row = $("<tr></tr>");	
				for(var j = 0; j < this.options.columns.length; j ++) {
					var each = this.options.columns[j];
					var id = each.id;
					row.append(
						$("<td><div></div></td>")
						.html(result[i][id]
								));
				}
				this.element.append(row);
			}
			
		},
		addRow: function() {
			
		},
	};
	
    $.fn.stockiitable = function (options) {
    	
    	var stockiiTable = new StockiiTable(this, options);
    	stockiiTable.init();
    };
    
})(jQuery);