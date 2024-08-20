;(function ( $, window, document, undefined ) {

		//set up data for offline testing
		var addressData = [{"Id":"GBR|PR|9292385|0|0|0","Text":"G12 8BW, 9, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292386|0|0|0","Text":"G12 8BW, 9a, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292358|0|0|0","Text":"G12 8BW, 1/1, 11, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292361|0|0|0","Text":"G12 8BW, 1/2, 11, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292371|0|0|0","Text":"G12 8BW, 2/1, 11, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292374|0|0|0","Text":"G12 8BW, 2/2, 11, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Descripti8on":"","Next":"Retrieve"},{"Id":"GBR|PR|9292378|0|0|0","Text":"G12 8BW, 3/1, 11, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292382|0|0|0","Text":"G12 8BW, 3/2, 11, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292364|0|0|0","Text":"G12 8BW, 13, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292365|0|0|0","Text":"G12 8BW, 13a, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292366|0|0|0","Text":"G12 8BW, 15, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292359|0|0|0","Text":"G12 8BW, 1/1, 17, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292362|0|0|0","Text":"G12 8BW, 1/2, 17, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292373|0|0|0","Text":"G12 8BW, 2/1, 17, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292375|0|0|0","Text":"G12 8BW, 2/2, 17, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292380|0|0|0","Text":"G12 8BW, 3/1, 17, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292383|0|0|0","Text":"G12 8BW, 3/2, 17, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292367|0|0|0","Text":"G12 8BW, 19, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292368|0|0|0","Text":"G12 8BW, 19a, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292370|0|0|0","Text":"G12 8BW, 21, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292360|0|0|0","Text":"G12 8BW, 1/1, 23, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292372|0|0|0","Text":"G12 8BW, 2/1, 23, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292379|0|0|0","Text":"G12 8BW, 3/1, 23, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292377|0|0|0","Text":"G12 8BW, 25, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292357|0|0|0","Text":"G12 8BW, 1/1, 27, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292363|0|0|0","Text":"G12 8BW, 1/2, 27, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292369|0|0|0","Text":"G12 8BW, 2/1, 27, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"},{"Id":"GBR|PR|9292381|0|0|0","Text":"G12 8BW, 3/1, 27, Kersland Street, Glasgow","Highlight":"","Cursor":0,"Description":"","Next":"Retrieve"}];
		var addressDetails = [{"Id":"GBR|PR|9292364|0|0|0","DomesticId":"9292364","Language":"ENG","LanguageAlternatives":"ENG","Department":"","Company":"","SubBuilding":"","BuildingNumber":"13","BuildingName":"","SecondaryStreet":"","Street":"Kersland Street","Block":"","Neighbourhood":"","District":"","City":"Glasgow","Line1":"13 Kersland Street","Line2":"","Line3":"","Line4":"","Line5":"","AdminAreaName":"Glasgow City","AdminAreaCode":"00QS","Province":"Lanarkshire","ProvinceName":"Lanarkshire","ProvinceCode":"","PostalCode":"G12 8BW","CountryName":"United Kingdom","CountryIso2":"GB","CountryIso3":"GBR","CountryIsoNumber":826,"SortingNumber1":"14112","SortingNumber2":"","Barcode":"(G128BW1BZ)","POBoxNumber":"","Label":"13 Kersland Street\n\n\nGlasgow\nG12 8BW\nUnited Kingdom","Type":"Residential","DataLevel":"Premise"}];
		var testAddressData = [];
			testAddressData['Items'] = addressData;
			testDetailsData = [];
			testDetailsData['Items'] = addressDetails;
		// Create the defaults once
		var pluginName = "formManager",
				defaults = {
					testAddressData: testAddressData,
					testDetailsData: testDetailsData
		};

		// The actual plugin constructor
		function Plugin ( element, options ) {
				this.element = element;
				// jQuery has an extend method which merges the contents of two or
				// more objects, storing the result in the first object. The first object
				// is generally empty as we don't want to alter the default options for
				// future instances of the plugin
				this.settings = $.extend( {}, defaults, options );
				this._defaults = defaults;
				this._name = pluginName;
				this.init();
		}

		// Avoid Plugin.prototype conflicts
		$.extend(Plugin.prototype, {
				init: function () {
					this.initIdealForm();
					this.initPostcodeChecker();
				},

				initPostcodeChecker: function () {
					//click events for postcode button and returned addresses
					var that = this;

					$('.check-postcode').on('keyup', function(){
						var postcodeInput = $(this).prevAll('input.postcode:first');
						var currentInputName = $(postcodeInput).attr('name');
						var errorId = '#error-' + currentInputName;
						$(errorId).html('');
						$(errorId).hide();
					});

					$('.check-postcode').on('click', function(e){
						e.preventDefault();
						var postcodeInput = $(this).prevAll('input.postcode:first');
						var postcode = postcodeInput.val();
						that.currentInputName = $(postcodeInput).attr('name');
						that.checkPostcode(postcode);
					});

					$('#address-list').on('click', 'li a', function(e){
						e.preventDefault();
						var address = $(this).html();
						var li = $(this).parent();
						var addressInfo = $(li).data('address-info');
						var addressId = addressInfo['Id'];

						//get the full address from the postcodeanywhere id
						that.postcodeAnywhereRetrieve(addressId);
						$('#postcode-dialog').dialog('close');
					});
				},

				checkPostcode: function(postCode){
					if(postCode){
						var searchTerm = postCode;
						var lastId = '';
						var searchFor = 'PostalCodes';
						var country = 'GBR';
						var languagePreference = 'EN';
						this.postcodeAnywhereFind(searchTerm, lastId, searchFor, country, languagePreference);
					} else {
						return false;
					}
				},

				displayAddresses: function(addresses){
					//clear existing addresses
					$('#address-list').empty();
					$.each(addresses.Items, function(idx, address){
						var text = address['Text'];
						$('<li><a>'+text+'</a></li>').data('address-info', address).appendTo('#address-list');
					});

					var dialog = $('#postcode-dialog').dialog({
						autoOpen: true,
						height: 400,
						width: 400
					});
				},

				postcodeAnywhereFind: function(SearchTerm, LastId, SearchFor, Country, LanguagePreference) {
					var key = this.settings.key;
					var that = this;
					//var data = this.settings.testAddressData;  //dont call api all the time
				   // this.displayAddresses(data);

				    $.getJSON("http://services.postcodeanywhere.co.uk/CapturePlus/Interactive/Find/v2.00/json3.ws?callback=?",
				    {
				        Key: key,
				        SearchTerm: SearchTerm,
				        LastId: LastId,
				        SearchFor: SearchFor,
				        Country: Country,
				        LanguagePreference: LanguagePreference
				    },
				    function (data) {
				        // Test for an error
				        if (data.Items.length == 1 && typeof(data.Items[0].Error) != "undefined") {
				            // Show the error message
				            that.populateError('There was a problem looking up the postcode but you can still enter your address manually. Error details: '+data.Items[0].Description);
				        }
				        else {
				            // Check if there were any items found
				            if (data.Items.length == 0)
				                that.populateError('Sorry, there were no results');
				            else {
				                // PUT YOUR CODE HERE
				                that.displayAddresses(data);
				            }
				        }
				    });
				},

				postcodeAnywhereRetrieve: function(id){
					//var data = this.settings.testDetailsData;
					//console.log(data);					
					//Callback code for 2nd api call
				    var that = this;

				    
					var key = this.settings.key;
				    $.getJSON("http://services.postcodeanywhere.co.uk/CapturePlus/Interactive/Retrieve/v2.00/json3.ws?callback=?",
				    {
				        Key: key,
				        Id: id
				    },
				    function (data) {
				        // Test for an error
				        if (data.Items.length == 1 && typeof(data.Items[0].Error) != "undefined") {
				            // Show the error message
				            that.populateError(data.Items[0].Description);
				        }
				        else {
				            // Check if there were any items found
				            if (data.Items.length == 0)
				                that.populateError("Sorry, there were no results");
				            else {
				                // PUT YOUR CODE HERE
				                that.populateAddress(data.Items[0]);
				                //FYI: The output is a JS object (e.g. data.Items[0].Id), the keys being:
				                //Id
				                //DomesticId
				                //Language
				                //LanguageAlternatives
				                //Department
				                //Company
				                //SubBuilding
				                //BuildingNumber
				                //BuildingName
				                //SecondaryStreet
				                //Street
				                //Block
				                //Neighbourhood
				                //District
				                //City
				                //Line1
				                //Line2
				                //Line3
				                //Line4
				                //Line5
				                //AdminAreaName
				                //AdminAreaCode
				                //Province
				                //ProvinceName
				                //ProvinceCode
				                //PostalCode
				                //CountryName
				                //CountryIso2
				                //CountryIso3
				                //CountryIsoNumber
				                //SortingNumber1
				                //SortingNumber2
				                //Barcode
				                //POBoxNumber
				                //Label
				                //Type
				                //DataLevel
				            }
				        }
				    });
				},

				populateAddress: function (address){
					var addressId = 'address-'+ this.currentInputName;
					var addressInput = $('#'+addressId);
					if(addressInput.length>0){
						//Populate one line address
						var addressText = address.Line1 + ', ' + address.City + ', ' + address.Province + ', ' + address.PostalCode;
						$(addressInput).val(addressText);
						$(addressInput).parent('.field').removeClass('invalid');
						$(addressInput).parent('.field').addClass('valid');
					} else {
						//Populate two part address - ie, guarantor
						var address1Id = 'address-' + this.currentInputName + '1';
						var address1Input = $('#'+address1Id);
						address1Input.val(address.Line1);
						$(address1Input).parent('.field').removeClass('invalid');
						$(address1Input).parent('.field').addClass('valid');

						var address2Id = 'address-' + this.currentInputName + '2';
						var address2Input = $('#'+address2Id);
						address2Input.val(address.City);
						$(address2Input).parent('.field').removeClass('invalid');
						$(address2Input).parent('.field').addClass('valid');						
					}
				},

				populateError: function(description){
					//show error and remove valid class from field
					var errorId = '#error-' + this.currentInputName;
					$(errorId).html(description);
					$(errorId).show();
					$(errorId).parent('.field').removeClass('valid');
				},

				initIdealForm: function(){

					/*** Initialize the advanced form ***/
					$('form.idealforms').idealforms({
						silentLoad: false,
				      rules: {
				      	/* Property Details */
				      	'propadd':'required',
				      	'totagreevalue':'required',
				      	'agreevalue':'required',
				      	'tenstart':'required',

				      	/* Tenant Details */
						'fname':'required',
						'sname':'required',
						'dob':'required',
						'ni':'required',
						'add1':'required',
						'income': 'number',
						'post1':'required',
						'timeaddmths':'required',
						'contact':'required',

						/* Previous Addresses */
						'llname':'required',
						'lltel':'required',
						'lladd':'required',

						/* Occupation */

						'empemail': 'email',

						/* Guarantor */
						'gemail': 'email',

						/* Bank Details */
						'bankname':'required',
						'accholder':'required',
						'bankadd1':'required',
						'accno':'required',
						'sort':'required',

						/* Apply */
						'consent':'minoption:1'

				      },

				      errors: {
				      	/* Property Details */
				        'propadd': {
				          required: 'Please enter the property address'
				        },
				        'totagreevalue':{
				        	required: 'Please enter the total amount of rent for this property'
				        },
				        'agreevalue':{
				        	required: 'Please enter the total amount of rent for this applicant'
				        },
				        'tenstart':{
				        	required: 'Please enter the start data for the proposed tenancy'
				        },

				        /* Tenant Details */
						'fname':{
							required: 'Please enter the prospective tenant\'s first name'
						},
						'sname':{
							required: 'Please enter the prospective tenant\'s surname'
						},
						'dob':{
							required: 'Please enter the prospective tenant\'s date of birth'
						},
						'ni':{
							required: 'Please enter the prospective tenant\'s national insurance number'
						},
						'add1':{
							required: 'Please enter the prospective tenant\'s current address'
						},
						'post1':{
							required: 'Please enter the prospective tenant\'s current postcode'
						},
						'timeaddyrs':{
							required: 'Please enter the length of time the prospective tenant has spent at this address'
						},
						'income':{
							number: 'The income figure must be a number'
						},
						'timeaddmths':{
							required: 'Please enter the length of time the prospective tenant has spent at this address'
						},		
						'contact':{
							required: 'Please enter the prospective tenant\'s contact telephone number'
						},

						/* Previous Addresses */
						'llname':{
							required: 'Please enter the current or previous landlord\'s name'
						},
						'lltel':{
							required: 'Please enter the current or previous landlord\'s telephone number'
						},
						'lladd':{
							required: 'Please enter the current or previous landlord\'s address'
						},		

						/* Bank Details */
						'bankname':{
							required: 'Please enter the prospective tenant\'s bank name'
						},
						'accholder':{
							required: 'Please enter the name of the bank account holder'
						},
						'bankadd1':{
							required: 'Please enter the prospective tenant\'s bank address'
						},
						'accno':{
							required: 'Please enter the prospective tenant\'s bank account number'
						},
						'sort':	{
							required: 'Please enter the prospective tenant\'s bank sort code'
						},

						/* Apply */
						'consent': {
							minoption: 'Please confirm that you have the prospective tenant\'s consent to request this check.'
						}
				      },

				      steps: {
				      	  stepNames: ['Property<br/>Details', 'Tenant<br/>Details', 'Previous<br/>Addresses', 'Landlord<br/>Details', '<div>Occupation</div>', '<div>Guarantor</div>', 'Bank<br/>Details', '<div>Identification</div>', '<div>Apply</div>'],
						  buildNavItems: function(i) {
						    return this.opts.steps.stepNames[i];
						  }
				      },

				      onSubmit: function(invalid, e) {
				        var invalidFields = $('form.idealforms').idealforms('get:invalid').filter('.essential');
				        var invalid = (invalidFields.length>0);
				       	if(invalid){
				       		e.preventDefault();
				       		$('form.idealforms').idealforms('goToStep', 1);
				       		$(invalidFields).first().focus();
				       		$(invalidFields).first().addClass('invalid');
				       		$(invalidFields).first().find('.error').show();
				       	}
				      }
				    });

				    $('form.idealforms').find('input, select, textarea').on('change keyup', function() {
				      $('#invalid').hide();
				    });

				    $('.prev').click(function(){
				    	var currentStep = $(this).closest('section');
				    	var stepId = $(currentStep).attr('id').split('-')[1];
				    	if(stepId==3){
				    		if ($('.idealsteps-nav ul li:nth-child(3)').is(":visible")){
						    	$('form.idealforms').idealforms('prevStep');
				    		} else {
				    			$('form.idealforms').idealforms('goToStep', 1);	
				    		}
				    	} else {
				    		$('form.idealforms').idealforms('prevStep');
				    	}
 						$('.prev').show();
				    });

				    $('.next').click(function(){
						var currentStep = $(this).closest('section');
						var stepId = $(currentStep).attr('id').split('-')[1];
						if(stepId==1){
				    		if ($('.idealsteps-nav ul li:nth-child(3)').is(":visible")){
				      			$('form.idealforms').idealforms('nextStep');				    			
				    		} else {
				    			$('form.idealforms').idealforms('goToStep', 3);
				    		}
				    	} else {
				    		$('form.idealforms').idealforms('nextStep');
				    	}
						$('.next').show();
				    });

					$('.datepicker').datepicker('option', 'dateFormat', 'dd/mm/yy');

					$('#timeaddyrs').on('change keyup', function(){
						var years = parseInt($(this).val());
						if(!isNaN(years)){
							if(years>5){
								$('.idealsteps-nav ul li:nth-child(3)').hide();
							} else {
								$('.idealsteps-nav ul li:nth-child(3)').show();
							}
						}
					});
					
				}
		});

		// A really lightweight plugin wrapper around the constructor,
		// preventing against multiple instantiations
		$.fn[ pluginName ] = function ( options ) {
				this.each(function() {
						if ( !$.data( this, "plugin_" + pluginName ) ) {
								$.data( this, "plugin_" + pluginName, new Plugin( this, options ) );
						}
				});

				// chain jQuery functions
				return this;
		};

})( jQuery, window, document );
