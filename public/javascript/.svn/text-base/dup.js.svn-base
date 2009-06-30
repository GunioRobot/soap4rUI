$(function(){ addDuplicateFormFuncs(); });

function addDuplicateFormFuncs(){
	
	$(".inputs").each(function(i){//for each set of .inputs being set1, set2, set3 etc...
		
		repeat(this.id); // get the current id of the .inputs element and pass it to the repeat function
		
		function repeat(currentSet){
	
			var totalInputs = $("#" + currentSet + " .formInputs").length;//get current length of .formInputs of the current set ex. = #set1 .formInputs
			
			$("#" + currentSet + " .formInputs:last .add:visible").click(function(){//add click handler to current sets .add ex. = #set1Input1 .add
				
				$("#" + currentSet + " .formInputs:last .add").css({"visibility":"hidden"});//hide button for current sets .add
				$("#" + currentSet + " .formInputs:last .add").unbind();//remove click event from the prior input
				
				$("#" + currentSet + " .formInputs:last").after("<span class='formInputs' id='"+currentSet+"Input"+($("#" + currentSet + " .formInputs").length + 1)+"'><label>name<input name='name' alt='name' type='text' /></label>&nbsp;<label>last name<input name='lastName' alt='lastName' type='text' /></label>&nbsp;<label>email<input name='email' alt='email' type='text' /></label>&nbsp;<a href='#' class='remove'><img src='images/removeBtn.gif' alt='remove' /></a>&nbsp;<a href='#' class='add'><img src='images/addBtn.gif' alt='add' /></a></span>")// add another set of inputs for a specific set
				
				if ($("#"+currentSet).parent()[0].scrollHeight != 100){//scroll box 
					$("#"+currentSet).parent()[0].scrollTop = $("#"+currentSet).parent()[0].scrollHeight;
				}
				
				$("#" + currentSet + " .formInputs").removeClass("oddBg");//remove oddBg class
				$("#" + currentSet + " .formInputs:odd").addClass("oddBg");//add back in oddBg class
				
				$("#"+currentSet+" .formInputs input").each(function(){//update the name attribute of the new Input added
					this.name = "";
					var inputName = ($(this).parent().parent().attr('id')) + this.alt;
					this.name = inputName;
					//this.value = inputName;
				})
		
				$("#"+currentSet+"Input"+ (totalInputs + 1) +" .remove").click(function(){//bind click event to the remove button	
					if($(this).parent().next().length == 0){//if there are no inputs after these inputs then you are the last one so...
					$(this).parent().prev().children(".add").css({"visibility":"visible"});//naviagte to the prior inputs and turn on the add 
					}
					
					$(this).parent().remove();//remove this inputs for a specific set
					
					$("#" + currentSet + " .formInputs").removeClass("oddBg");//remove oddBg class
					$("#" + currentSet + " .formInputs:odd").addClass("oddBg");//add back in oddBg class
					
					$("#" + currentSet + " .formInputs").each(function(i){
						this.id = currentSet + "Input" + (i + 1);
						$("#"+currentSet+" .formInputs input").each(function(){//update the name attribute of the new Input added
						this.name = "";
						var inputName = ($(this).parent().parent().attr('id')) + this.alt;
						this.name = inputName;
						//this.value = inputName;
				})
					})
					
					repeat(currentSet); //run the repeat function again on the new instance of the DOM, with elements removed
					
					return false; //stop browser defalut event of href
				})
				
				repeat(currentSet); //run this function again on the new instance of the DOM, with elements added
		
				return false;//stop browser defalut event of href
		
			})//end click handler
			
		}//end repeat function
		
	})//end each for .inputs
}
 
