<html>
<head>
<script type="text/javascript">
	/* function findDay() {
		var eID = document.getElementById("daysCombo");
		var dayVal = eID.options[eID.selectedIndex].value;
		var daytxt = eID.options[eID.selectedIndex].text;
		alert("Selected Item " + daytxt + ", Value " + dayVal);
	} */
	
	function addSeleB(divname, radioss) {
		alert(radioss.value);
		var eID = document.getElementById("daysCombo");
		var i;
		var newDiv=document.createElement('div');
	    var html = '<select>';
	    
	    for (i = 0; i < eID.length; i++) {
			var dayVal = eID.options[i].value;
			var daytxt = eID.options[i].text;
			html += "<option value='"+dayVal+"'>"+daytxt+"</option>";
	    }
	    html += '</select>';
	    newDiv.innerHTML= html;
	    document.getElementById(divname).appendChild(newDiv);
	}
	
	function findDay() {
		var eID = document.getElementById("daysCombo");
		var i;
	    for (i = 0; i < eID.length; i++) {
		var dayVal = eID.options[i].value;
		var daytxt = eID.options[i].text;
		alert("Selected Item " + daytxt + ", Value " + dayVal);
	    }
	}
	
	function addSel() {
		alert("hi1");
		var eID = document.getElementById("daysCombo");
		alert("hi2");
		var sel = newElement("select");
		alert("hi");
		var i;
	    for (i = 0; i < eID.length; i++) {
		var dayVal = eID.options[i].value;
		var daytxt = eID.options[i].text;
		var option = document.createElement("option");
		option.value = dayVal;
		option.text = daytxt;
		alert("Selected Item " + daytxt + ", Value " + dayVal);
		try {
			sel.add(option, null); //Standard 
		}catch(error) {
			sel.add(option); // IE only
		}
		alert("Selected Item " + daytxt + ", Value " + dayVal);
	    }
	    var foo = document.getElementById("formId");

		//Append the element in page (in span).
		foo.appendChild(sel);
	    
	}
	
	function addSelectBox() {
		alert("hi");
		/* //Create the element with my helper function from the link
		var sel = newElement("select",{name:"sel1"});
		//Add the options
		sel.options[sel.options.length] = new Option("text0","value0");
		sel.options[sel.options.length] = new Option("text1","value1");
		sel.options[sel.options.length] = new Option("text2","value2");
		sel.options[sel.options.length] = new Option("text3","value3");
		//add the element to the form
		document.getElementById("formId").appendChild(sel);
		alert(document.getElementById("formId").options.length); */
		
		
		
		
		//Create an input type dynamically.
		var element = document.createElement("input");

		//Assign different attributes to the element.
		element.setAttribute("type", "text");
		element.setAttribute("value", "text");
		element.setAttribute("name", "name");


		var foo = document.getElementById("formId");

		//Append the element in page (in span).
		foo.appendChild(element);
	}
	
	function addSelect(divname) {
	    var newDiv=document.createElement('div');
	    var html = '<select>', dates = dateGenerate(), i;
	    for(i = 0; i < dates.length; i++) {
	        html += "<option value='"+dates[i]+"'>"+dates[i]+"</option>";
	    }
	    html += '</select>';
	    newDiv.innerHTML= html;
	    document.getElementById(divname).appendChild(newDiv);
	}
	
	function dateGenerate() {
	       var date = new Date(), dateArray = new Array(), i;
	       curYear = date.getFullYear();
	        for(i = 0; i<5; i++) {
	            dateArray[i] = curYear+i;
	        }
	        return dateArray;
	}
</script>
</head>
<body>
	<select id="daysCombo">
		<option value="1">Sunday</option>
		<option value="2" selected="selected">Monday</option>
		<option value="3">Tuesday</option>
		<option value="4">Wednesday</option>
		<option value="5">Thursday</option>
		<option value="6">Friday</option>
		<option value="7">Saturday</option>
	</select>
	<br>
	<br>
	<button onclick="findDay()">Get Selected Day</button>
	<input type="radio"  name="yes" value="yes" onchange="addSeleB('select-container',this);"/>
	<div id="select-container">
</div>
</body>
</html>