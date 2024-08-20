		$(document).ready(function() {

			//initialize form manager plugin with postcodeanywhere key			
			$('form.idealforms').formManager({
				key: 'YR85-TF45-UA17-MM97'
			});

			$("#userForm").validate({
				onfocusout: function(element) { 
					$(element).valid();
				 },
				 validClass: "success",
				submitHandler:function(form) {
					SubmittingForm();
				},
				rules: {
					fullnames:{
						required:true						 
					},
					usernames:{
						required:true						 
					},
					emails:{
						required:true,
						email: true
					},
					tel:{
						required:true,
						customphone: true						 
					},
					passs:{
					  required:true,
					  minlength: 4,
					  maxlength: 15,
					  pass: true
					   
					 },
					 passsc:{
					  required:true,
					  minlength: 4,
					  maxlength: 15,
					  equalTo: "#passs"
					 },
					 agree:{
					  required: true
					 }
				},
				 messages: {
    				
    				fullnames: {
     					required: "Please enter your full name"
    				},
					usernames: {
     					required: "Please enter user name."
    				},
					emails: {
     					required: "Please enter your email address."
    				},
					tel: {
     					required: "Please enter the phone number"
    				},
					passs: {
     					required: "Please enter the password"
    				},
					passsc: {
     					required: "Enter the password again."
    				}
				 }
			
			});
			$.validator.addMethod('customphone', function (value, element) {
    			return this.optional(element) || /^\d{3}-\d{3}-\d{4}$/.test(value);
			}, "Please follow the patern, e.g. 123-456-7890");		
			
			 // Validate password for speacial character
			jQuery.validator.addMethod("pass", function(value, element) {
			 return this.optional(element) || /[^\w\s]/.test(value);
			}, "Password should have atleast one speacial character.");
}); 


/* Javascript for other forms */
SubmittingForm=function() {
	var value = $('#fullnames').value;
	var valuep = $('passs').value;
	var valuepi = $('passsc').value;
	var valuename = $('usernames').value;
	var valuetel = $('tel').value;
	var valueterms = $('#agree').is(':checked');
	var valuese = $('emails').value;
	$("#form1").submit();
}

function conFirm() {
	if(confirm('I have the applicants consent to request this data?'))return true;
	else return false;
}
