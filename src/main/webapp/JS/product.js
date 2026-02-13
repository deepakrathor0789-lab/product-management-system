function makeActive(id)
{
	document.getElementById(id).style.color="#ffffff";
	document.getElementById(id).style.backgroundColor="#1abc9c";
}
function confirmLogout() 
{
    return confirm("Are you sure you want to logout?");
}
