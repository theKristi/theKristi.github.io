var friends={}

friends.bill={firstName:'Bill',
lastName:'smit',
number:4,
address:[]
};
friends.steve={firstName:'Steve',
lastName:'smit',
number:5,
address:[]
};

function list(param)
{
    
    for( var key in friends)
    {
        console.log(key);
    }
}

function search(name)
{
    for( var key in friends)
    {
        if(name===friends[key].firstName)
        {
            console.log(friends[key].firstName);
            return key;
        }
    }   
}
function searchSteve()
{
	search('Steve')
}