<html>
<head>
  <title>jQuery UI Datepicker - Animation</title>
  <script src="http://code.jquery.com/jquery-2.1.1.js"></script>
    <!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.1/themes/ui-darkness/jquery-ui.css">
    <script src="http://code.jquery.com/ui/1.11.1/jquery-ui.js"></script> -->
  
       <!-- <script src="jquery-21.1.js"></script> -->
       <link rel="stylesheet"  href="jquery-ui.css">
       <script src="jquery-ui.js"></script>
  
  <script>
  $(function() {
    $( "#date_picker" ).datepicker();
   /*  $( "#effects" ).change(function() {
      $( "#date_picker" ).datepicker( "option", "showAnim", $( this ).val() );
    }); */
  });
  </script>
</head>
<body>
 
<p>Select Animation:<br>
  <select id="effects">
    <option value="show">Show (default)</option>
    <option value="bounce">Bounce</option>
    <option value="slideDown">Slide down</option>
    <option value="fadeIn">Fade in</option>
    <option value="blind">Blind</option>
    <option value="fold">Fold </option>
    <option value="">None</option>
  </select>
</p>
<p>Click Here to Enter Date: <input type="text" id="date_picker" size="25"></p>
 
</body>
</html>