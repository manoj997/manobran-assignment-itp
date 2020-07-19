function validate(){
	var username = document.forms["Reg_Form"][ "username"].value;
	var mail = document.forms["Reg_Form"][ "email"].value;
	
	
	
	
	
	 if(isAlphebatic(username))
 	         if(mailValid(mail))
	         
	                 return true;
				    else
						return false;
                                    
				   
		
	
}
	
	
	function isEmpty(elemValue,field){
		 if(elemValue==""  || elemValue == null){
			 alert("You cannot have " + field + " field empty");
			 return true;
		 }
		 else
			 return false;
	}
	
	function isAlphebatic(elemValue){
		var exp = /^[a-zA-Z]+$/;
		if(!isEmpty(elemValue, "UserName"))
		{
			if(elemValue.match(exp))
			{
				return true;
			}
			else
			{
               alert("Enter only text for you User Name");
               return false;			   
		  }
		}
		else
			return false;
	}

	
	function mailValid(elemValue)
{
    if(!isEmpty(elemValue,"Email"))
    {
        var atops = elemValue.indexOf("@");
        var dotops = elemValue.indexOf(".");
        
        if(atops <1 || dotops+2 >=elemValue.length || atops+2>dotops)
        {
            alert("Enter a valid Email Address");
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }
} 


