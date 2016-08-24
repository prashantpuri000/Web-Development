
function validateForm()
{
    var x = document.forms["account"]["name"].value;
    if (x == null || x == "") {
        alert("Please fill your name");
        return false;
    }

    var s = document.forms["account"]["city"].value;
    if (s == null || s == "")
    {
        alert("Please enter city name");
        return false;
    }

    var t = document.forms["account"]["province"].value;
    if (t == null || t == "")
    {
        alert("Please enter province name");
        return false;
    }

    var u = document.forms["account"]["postal"].value;
    if (u == null || u == "")
    {
        alert("Please enter postal code");
        return false;
    }

    var v = /^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$/;
/*
    if (u = !v.test(u))
    {
        alert("Please input a valid postal code");
        return false;
    }

    var k = document.forms["account"]["cell"].value;
    if (k == null || k == "")
    {
        alert("Please enter phone number");
        return false;
    }

    var n = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
    if (k = !n.test(k))
    {
        alert("Please input a valid phone number");
        return false;
    }

    var y = document.forms["account"]["Email"].value;
    if (y == null || y == "") {
        alert("Please fill your Email");
        return false;
    }

    var str = document.forms["account"]["Email"].value;
    var q = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    if (str = !q.test(str))
    {
        alert("Please input a valid email address!");
        return false;
    }
*/
    alert("Order Submited");

}

var size_prices = new Array();
size_prices["small"] = 5;
size_prices["medium"] = 10;
size_prices["large"] = 15;
size_prices["xlarge"] = 20;


var topping_prices2 = new Array();
topping_prices2["pepperoni"] = 0;
topping_prices2["bacon"] = 0.5;
topping_prices2["ham"] = 0.5;
topping_prices2["sausage"] = 0.5;
topping_prices2["beef"] = 0.5;
topping_prices2["greenpepper"] = 0.5;
topping_prices2["mushroom"] = 0.5;
topping_prices2["onions"] = 0.5;
topping_prices2["olives"] = 0.5;
topping_prices2["tomatoes"] = 0.5;

var topping_prices3 = new Array();
topping_prices3["pepperoni"] = 0;
topping_prices3["bacon"] = 0.5;
topping_prices3["ham"] = 0.5;
topping_prices3["sausage"] = 0.5;
topping_prices3["beef"] = 0.5;
topping_prices3["greenpepper"] = 0.5;
topping_prices3["mushroom"] = 0.5;
topping_prices3["onions"] = 0.5;
topping_prices3["olives"] = 0.5;
topping_prices3["tomatoes"] = 0.5;


var crust_prices = new Array();
crust_prices["thin"] = 0;
crust_prices["hand"] = 0;
crust_prices["pan"] = 0;
crust_prices["stuff"] = 2;




function getSizePrice()
{
    var SizePrice = 0;

    var theForm = document.forms["account"];

    var selectedpizza = theForm.elements["selectedpizza"];

    for (var i = 0; i < selectedpizza.length; i++)
    {

        if (selectedpizza[i].checked)
        {

            SizePrice = size_prices[selectedpizza[i].value];

            break;
        }
    }

    return SizePrice;
}

function crustPrice()
{
    var crustPrice = 0;

    var theForm = document.forms["account"];

    var crust = theForm.elements["crust"];


    for (var i = 0; i < crust.length; i++)
    {

        if (crust[i].checked)
        {

            crustPrice = crust_prices[crust[i].value];

            break;
        }
    }


    return crustPrice;
}


function getToppingPrice2()
{
    var ToppingPrice2 = 0;

    var theForm = document.forms["account"];

    var selectedtopping2 = theForm.elements["topping2"];

    ToppingPrice2 = topping_prices2[selectedtopping2.value];

    return ToppingPrice2;
}

function getToppingPrice3()
{
    var ToppingPrice3 = 0;

    var theForm = document.forms["account"];

    var selectedtopping3 = theForm.elements["topping3"];

    ToppingPrice3 = topping_prices3[selectedtopping3.value];

    return ToppingPrice3;
}


function calculateTotal()
{
    var topping_prices2 = new Array();
	    topping_prices2["None"] = 0;
	    topping_prices2["pepperoni"] = 0;
	    topping_prices2["bacon"] = 0.5;
	    topping_prices2["ham"] = 0.5;
	    topping_prices2["sausage"] = 0.5;
	    topping_prices2["beef"] = 0.5;
	    topping_prices2["greenpepper"] = 0.5;
	    topping_prices2["mushroom"] = 0.5;
	    topping_prices2["onions"] = 0.5;
	    topping_prices2["olives"] = 0.5;
	    topping_prices2["tomatoes"] = 0.5;
    //Here we get the total price by calling our function
    //Each function returns a number so by calling them we add the values they return together
    var pizzaPrice = getSizePrice() + crustPrice();
//    pizzaPrice += parrsInt(topping_prices2[$("#topping").val()]);
    var topprice = (topping_prices2[document.getElementById("topping").value]);

    topprice += (topping_prices2[document.getElementById("topping2").value]);
    topprice += (topping_prices2[document.getElementById("topping3").value]);

    if (topprice >= 1.0) {
        topprice = 1;
    }
    if (topprice == 0.5) {
        topprice = 0;
    }
    pizzaPrice += topprice;
    //display the result
    var divobj = document.getElementById('totalPrice');
    document.getElementById('total').value = pizzaPrice;

    divobj.style.display = 'block';
    divobj.innerHTML = "Total Price For the Pizza $" + pizzaPrice;
	
}

function hideTotal()
{
    var divobj = document.getElementById('totalPrice');
}

function buildData() {
    var txtData = "Name: " + $("#nameField").val() +
            "\r\nLast Name: " + $("#lastNameField").val() +
            "\r\nGender: " + ($("#genderMale").is(":checked") ? "Male" : "Female");
    return txtData;
}