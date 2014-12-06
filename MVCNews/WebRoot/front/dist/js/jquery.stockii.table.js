/**
 * 
 */

;(function ($, window) {
	var contentData;
	
	/**
	 * @options
	 * @param ajax [function] <$.noop> "Function provides json Data the table need"
	 * @param callback [function] <$.noop> "Funciton called after opening instance"
	 * @param columns [Array] <[]> "Array for table head info"
	 * @param customClass [string] <''> "Class applied to instance"
	 * @param minHeight [int] <100> "Minimum height of table"
	 * @param minWidth [int] <100> "Minimum width of table"
	 * @param pageNumber [number] <1> "Number of the current page"
	 * @param pageSize [number] <10> "Count of items in one page"
	 * @param simpleMode [boolean] <false> "Use <div></div> for nesting"
	 * @param url [string] <""> "Url for requesting content data"
	 * 
	 */
	var StockiiTable = function(element, options) {
		// selector of this table
		this.element = element;
		// default option for this table
		this.defaults = {
			ajax: {
				url:"",
				type:"",
				data: "",
				dataType: "",
				func: function(data) {}
			},
			callback: function() {
			},
			columns: [{			
				id:"1",				// id for this column, not same with the others
			    name: "colomn1",	// name for this column, can be seen as table head name
			    width: 50,			// width for this column, a percent value, eg: 50 means 50% width
			    align: "left",		// text-align for this column
			   	},
			],
			contentData: {},
			customClass: "",
			minHeight: 120,
			minWidth: 120,
			pageNumber: 1,
			pageSize: 100,
			simpleMode: false,
			scrollPagerUsed: false,	// start infinite table mode by send page ajax request when setting true
			url:"",	
		};
		// option for making this table, extended by 'defaults'
		this.options = $.extend({}, this.defaults, options);
	};
	
	StockiiTable.prototype = {
		init: function() {
			// make the table head
			var tableHead = $("<thead></thead>");
			var tableHeadRow = $("<tr></tr>");
			tableHeadRow.appendTo(tableHead);
			tableHead.addClass(this.options.customClass);
			for(var i = 0; i < this.options.columns.length; i ++) {
				var each = this.options.columns[i];
				tableHeadRow.append(
					$("<th></th>")
					.html(each.name)
					.css({"width": each.width + "%",
						"text-align": each.align,
					}));
			}
			this.element.append(tableHead);
			
			// make the table content
			var result = this.options.contentData;
			// traverse content data which is a json string
			for(var i = 0; i < result.length; i++) {
				var row = $("<tr></tr>");
				// traverse columns, read all the properties of column object
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
			
//			startAjax(this.options);
			
		},
		addRow: function() {
			
		}
		
	};
	
	function startAjax(options) {
		var param = "";
		if(options.scrollPagerUsed) {
			param = options.ajax.data
			+ "&pageNumber" + options.pageNumber
			+ "&pageSize" + options.pageSize;
		} else {
			param = options.ajax.data;
		}
		
		$.ajax({
			url:"" + options.ajax.url,
			type:"" +  + options.ajax.type,
			data: "" + param,
			dataType: "json",
			success:function(data){
				contentData = options.ajax.func(data);
				refreshTable(options, contentData);
			},
			error:function(){
				console.log("get info error");
			}
		
		});
	}
	
	function refreshTable(options, displayData) {
		// traverse content data which is a json string
		for(var i = 0; i < displayData.length; i++) {
			var row = $("<tr></tr>");
			// traverse columns, read all the properties of column object
			for(var j = 0; j < options.columns.length; j ++) {
				var each = options.columns[j];
				var id = each.id;
				row.append(
					$("<td><div></div></td>")
					.html(displayData[i][id]
							));
			}
			this.element.append(row);
		}
	}
	
	
    $.fn.stockiitable = function (options) {
    	var stockiiTable = new StockiiTable(this, options);
    	stockiiTable.init();
    };
    
})(jQuery);