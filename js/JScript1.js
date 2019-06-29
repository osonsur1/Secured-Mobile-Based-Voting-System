// JScript File

function delete_confirmation(message_str, url)
{
	 
	var r = confirm("Are you sure want to delete " + message_str + "?")
		if (r==true)
	{
		location.href = url;
	}
}

 

function validate_candidate_form(obj)
{
alert(obj);

	return (checkstr(obj.candidate_name,'Candidate Name') && checkstr(obj.candidate_name,'Candidate Party')); 
}


function chkimage(obj)
{
	if (Trim(obj.value).length != 0)
	{
		var ext = getfileext(obj.value);
		if (!(ext == ".jpg" || ext == ".png" || ext == ".bmp" || ext == ".gif"))
		{
			alert('Please provide a valid file format for the image. Valid formats are jpg, png, bmp or gif.');
			obj.value='';
			obj.focus();
			return false;
		}
	}
	return true;
}
 
 
 
function getfileext(filename)
{
	return Trim(filename).substr(Trim(filename).length-4).toLowerCase();
}
function LTrim(str)
	{
		if (str==null){return null;}
		for(var i=0;str.charAt(i)==" ";i++);
		return str.substring(i,str.length);
	}
function RTrim(str)
	{
		if (str==null){return null;}
		for(var i=str.length-1;str.charAt(i)==" ";i--);
		return str.substring(0,i+1);
	}
function Trim(str){return LTrim(RTrim(str));}


function checkstr(obj,errmsg)
{
 
	if (Trim(obj.value).length == 0)
	{
		alert('Please enter/select a valid ' + errmsg + '.');
		obj.focus();
		return false;
	}
	return true;
}
function validate_feedback_form(obj)
{
	return (checkstr(obj.to_date,'date') && checkstr(obj.from_date,'date')); // && checkstr(obj.ccd_photo_simage,'image') && checkstr(obj.ccd_photo_image,'image'));
}

function popup(url,width,height)
{
	w=window.open(url,"popupwin","width="+width+",height="+height+",position=center")
}

function ValidateFullNumeric(myfield,e)
{
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (e) keycode = e.which;
	else return true;
	if (((keycode>46) && (keycode<58) )  || (keycode==8)) { return true; }
	else return false;
}
function ValidateNumeric(myfield,e)
{
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (e) keycode = e.which;
	else return true;
	if ((keycode==32) || ((keycode>43) && (keycode<58) )  || (keycode==8)) { return true; }
	else return false;
}

function make_confirmation(message_str, url)
{
	if (message_str == "") 
	{
		message_str = "this record";
	}
	else
	{
		message_str = "the " + message_str;
	}
	var r = confirm("Are you sure want to " + message_str + "?")
		if (r==true)
	{
		location.href = url;
	}
}


 