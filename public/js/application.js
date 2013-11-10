$(document).ready(function() {

// $("#view.forms").hide()
	$("forms").click(function(){
		var idToShow = $(this).attr("href");
		$(idToShow).show().siblings(".forms").hide();
		return false;
	});

	$(function(){
		var addDiv = $("#addInput");
		var i = 2;

		$('#createNewAnswer').on('click',function(){
			$('<p><label>Please enter a possible answer.</label><input type="text" id="p_new" name="answer[' + i + ']" /><a href="#" id="remNew">Remove</a></p>').appendTo(addDiv);
			i++;
			return false;
		});
		$('.form').on('click', '#remNew',function(){ 
			$(this).parents('p').remove();
			i--;
			return false;
		});
	});


	$(".form").submit(submitForm);
	$("#finishReview").click(submitChange);



		// event.preventDefault();
		// console.log("here");

		// var form= $(this);
		// var url = form.attr("action");
		// var data = form.serialize();

		// $.post(url, data, function(user_object){
		// 	var message = "Question Created";
		// 	$(".newQuestion").html(message);
		// 	$(".form")[0].reset();

		// 	// get request happens after post 
		// });
	// });

	$("#finishReview").click(function(){
		// event.preventDefault();
		var form= $(".form");
		var url = form.attr("action");
		var data = form.serialize();

		var finalUrl = $(this).attr("href");

		$.post(url, data, function(user_object){


		
		$.get(finalUrl);
			
			// get request happens after post 
		});

		})

	});






function submitForm(){
		event.preventDefault();
		console.log("here");

		var form= $('.form');
		var url = form.attr("action");
		var data = form.serialize();

		$.post(url, data, function(user_object){
			var message = "Question Created";
			$(".newQuestion").html(message);
			$(".form")[0].reset();

			// get request happens after post 
		});	
}

function submitChange(){
		// event.preventDefault();
		var form= $(".form");
		var url = form.attr("action");
		var data = form.serialize();

		var finalUrl = $(this).attr("href");

		$.post(url, data);

		$.get(finalUrl);
			
			// get request happens after post 
		};



