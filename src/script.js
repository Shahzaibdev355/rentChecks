function loadCountries(){
//if countries already loaded then exit 
if($('#country_select>div:last-child>*').length>0)
return;

    $.getJSON("./src/codes.json",
        function (result) {
           //now our ajax call could read the countries data using ajax
            console.log(result)
           for(country of result){
            //html code of the list item
            $s=$('<div class="listItem"><div class="flag"><img src="flags/' + country.Name + '.png"></img></div>' + '<div class="country">' + country.Name + '</div></div>'  );
            
            //add the html code of the list item to the list container
            $s.appendTo($('#country_select>div:last-child'));

            //event handler for list item
            $s.on('click',function(){
                //add selected class to the clicked item so it will be GRAY color
                $(this).addClass('Selected').siblings().removeClass('Selected');
                
                //the html of selected country is copied into the first div
                $('#country_select>div:first-child div:first-of-type').html($(this).html())

                n=$(this).text().indexOf("(");
                $('#country_select input').val($(this).text())

            })

           }
           const ps=new PerfectScrollbar('#country_select>div:last-child');
           ps.update();
        }

        
    );


}


$(function(){
  
    $('#country_select >div:first-child div').click(function(){
        loadCountries();
        $('#country_select>div:last-child').fadeToggle();
    })

    $('#country_select').mouseleave(function(){
        $('#country_select >div:last-child').fadeOut();
    })
    
})