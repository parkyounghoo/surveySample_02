define(
	    [
	        'jquery',
	        'underscore',
	        'moment',
	        'handlebars',
	        
	        'bootstrap',
	        'jquery-ui',
	        'handlebars-helpers'
	    ],
	    function( $, _,AmCharts, moment, Handlebars )
	    {
	        'use strict';
	        
	        function bindEventListeners()
	        {
	        	$("#ksicMain").off("change");
	    		$("#ksicMain").on("change", function() {
	    			$.ajax({
	    				url : '/api/ksicSub',
	    				method : 'POST',
	    				data : {
	    					ksicCode : $("#ksicMain").val(),
	    				},
	    				dataType : 'json',
	    				success : function(data) {
	    					$("#ksicSub").empty();
	    					if(data.result.ksicSub.length > 0){
	    						for(var idx = 0; idx < data.result.ksicSub.length; idx++){
	    							$('#ksicSub').append("<option value ='"+data.result.ksicSub[idx].ksicCode + "'>"
	    									+ data.result.ksicSub[idx].ksicKorName + '</option>');
	    						}
	    					}
	    					else{
	    						$('#ksicSub').append("<option value =''>º±≈√</option>");
	    					}
	    				}
	    			})
	    		});
	        }
	        
	        $(function(){
	        	bindEventListeners();
	        });
	    }
	);