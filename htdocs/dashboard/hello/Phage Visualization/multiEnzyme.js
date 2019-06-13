
// When the document is ready
$(document).ready(function () {

    //Making the tab div actual tab using jquery ui
    $("#tab").tabs();

    //Selection between multiple phage or multiple Enzyme
    $("#homePageSubmit").click(function () {
        if ($(".radioButton").is(':checked')) {
            if ($('input[name=multiPhageOrEnzyme]:checked').val() == "phage") {
                $("#formPhage").attr("name", "formPhage[]");
                $("#formPhage").attr("multiple", true);
                $("#formPhage").val("Phages");
                $('#formPhage').multiselect({
                    nonSelectedText: 'Phages',
                    enableFiltering: true,
                    enableCaseInsensitiveFiltering: true,
                    buttonWidth: '75%'
                });

                $("#framework").attr("name", "formEnzyme");
                $("#framework").css("width", "75%");

            } else {
                $("#framework").attr("multiple", true);
                $("#framework").val("Enzymes");
                //making the framework id multiple select to select different enzymes
                $('#framework').multiselect({
                    nonSelectedText: 'Enzymes',
                    enableFiltering: true,
                    enableCaseInsensitiveFiltering: true,
                    buttonWidth: '75%'
                });
                $("#formPhage").css("width", "75%");
            }
            $("#homeMenu").css("display", "none");
            $(".form-group").fadeIn("slow");
        } else {
            alert("Please select an option");
        }

    })
    //Making the container div sortable so that its elements can be dragged and sorted
    $(function () {
        $("#container").sortable({
            placeholder: "ui-state-highlight"
        });
        $("#container").disableSelection();
    });

    //When the submit button is pressed
    $('#framework_form').on('submit', function (event) {

        //emptying the container so that we can draw all svgs. This is useful when the user reselcts enzymes after first submission
        $("#container").empty();

        //Same as above but clearing the svg contents like axis and circles
        $(".svgDiv").empty();

        //Showing the message. 
        $("#message").show();

        //gets the number of selected enzymes
        var selectedEnzymes = $("#framework").val();

        var selectedPhage = $("#formPhage").val();

        //Array to store all objects that contains the svgDiv
        var charts = [];

        //Array to store the basepair from the databse
        var basepair = [];

        //when the submit button is pressed, we stop its default operation
        event.preventDefault();

        //Then the data that we get from form is converted to url type to pass into ajax. I don't completely understand this.
        var form_data = $(this).serialize();

        if ($('input[name=multiPhageOrEnzyme]:checked').val() == "enzyme") {
            //If the user selects at least one enzyme
            if (selectedEnzymes.length != 0) {

                //showing load sign
                $("#loadSign").show()

                var loadTime = Math.round(4.5 * selectedEnzymes.length);

                if (loadTime < 60) {
                    //The visualization tab will display the following text
                    $("#message").html("Please wait. Your data will load in less than " + loadTime + " s.");
                }
                else {
                    loadTime = Math.floor(loadTime / 60);
                    var loadTimeRem = loadTime % 60;

                    $("#message").html("Please wait. Your data will load in less than " + loadTime + " min and " + loadTimeRem + " s.");
                }

                //Then the ajax call is initialize
                $.ajax({
                    async: false, //This is false because we want to store the data in the global variable
                    url: 'basepair.php', //This is the file that we will pass and retrieve the data from
                    method: "POST",
                    data: form_data,
                    success: function (data) {
                        //If the ajax call is success, parse the json data
                        var result = jQuery.parseJSON(data);

                        //for each objects in the parsed array
                        $.each(result, function (index, value) {

                            //get the object and push it in basepair variable
                            basepair.push(value);
                        })
                    }
                });

                //Calling another ajax call
                $.ajax(
                    {
                        url: "insert.php", //This is the file to send form data and retrieve json data
                        method: "POST",
                        data: form_data,
                        success: function (data) {

                            //If the call is success, then refresh the selection in the drop down menu
                            $('#framework option:selected').each(function () {
                                $(this).prop('selected', false);
                            });
                            $('#framework').multiselect('refresh');

                            //storing the retried data in result variable
                            var result = jQuery.parseJSON(data);

                            //for each object which is array of array 
                            $.each(result, function (index, value) {

                                //creating a new div to append svg
                                var elementDiv = document.createElement("div");
                                elementDiv.classList.add("svgDiv");

                                //appending the svgDiv to the container div which is sortable
                                document.getElementById('container').appendChild(elementDiv);

                                //storing all our object in chart array
                                charts.push(new Chart({
                                    //selecting svgDiv as our element where we will append the svg
                                    element: elementDiv,

                                    //Setting enzyme the index from our function 
                                    enzyme: index,

                                    //setting cutpoints the value of that index i.e an array
                                    cutPoints: value,

                                    //Setting selected phage to the phage that we have selecteed
                                    phage: selectedPhage,

                                    //setting bPair to first element from the basepair array because We got two values of basepair in an array
                                    bpair: basepair[0]

                                }))

                                //writing the name of enzymes and the cutpoints
                                console.log(index + ": " + value);
                            });

                            //Once the svgs has been created, the header message is hidden
                            $("#message").hide();
                            $("#loadSign").hide();
                        }
                    });
            }

            //If the user selects no enzymes at all
            else {
                $("#message").html("Please select an enzyme.");
            }
        }else{
            //If the user selects at least one enzyme
            if (selectedPhage.length != 0) {

                //showing load sign
                $("#loadSign").show()

                var loadTime = Math.round(4.5 * selectedPhage.length);

                if (loadTime < 60) {
                    //The visualization tab will display the following text
                    $("#message").html("Please wait. Your data will load in less than " + loadTime + " s.");
                }
                else {
                    loadTime = Math.floor(loadTime / 60);
                    var loadTimeRem = loadTime % 60;

                    $("#message").html("Please wait. Your data will load in less than " + loadTime + " min and " + loadTimeRem + " s.");
                }

                //Then the ajax call is initialize
                $.ajax({
                    async: false, //This is false because we want to store the data in the global variable
                    url: 'basepairPhage.php', //This is the file that we will pass and retrieve the data from
                    method: "POST",
                    data: form_data,
                    success: function (data) {
                        //If the ajax call is success, parse the json data
                        var result = jQuery.parseJSON(data);

                        //for each objects in the parsed array
                        $.each(result, function (index, value) {

                            //get the object and push it in basepair variable
                            basepair[index] = value;
            
                        })
                        
                    }
                });
                
                //Calling another ajax call
                $.ajax(
                    {
                        url: "insertPhage.php", //This is the file to send form data and retrieve json data
                        method: "POST",
                        data: form_data,
                        success: function (data) {

                            //If the call is success, then refresh the selection in the drop down menu
                            $('#formPhage option:selected').each(function () {
                                $(this).prop('selected', false);
                            });
                            $('#formPhage').multiselect('refresh');

                            //storing the retried data in result variable
                            var result = jQuery.parseJSON(data);

                            //for each object which is array of array 
                            $.each(result, function (index, value) {

                                //creating a new div to append svg
                                var elementDiv = document.createElement("div");
                                elementDiv.classList.add("svgDiv");

                                //appending the svgDiv to the container div which is sortable
                                document.getElementById('container').appendChild(elementDiv);

                                //storing all our object in chart array
                                charts.push(new ChartPhage({
                                    //selecting svgDiv as our element where we will append the svg
                                    element: elementDiv,

                                    //Setting phage the index from our function 
                                    phage: index,

                                    //setting cutpoints the value of that index i.e an array
                                    cutPoints: value,

                                    //Setting selected enzyme to the enzyme that we have selecteed
                                    enzyme: selectedEnzymes,

                                    //setting bPair to first element from the basepair array because We got two values of basepair in an array
                                    bpair: basepair[index]

                                }))

                                //writing the name of enzymes and the cutpoints
                                console.log(index + ": " + value);
                            });

                            //Once the svgs has been created, the header message is hidden
                            $("#message").hide();
                            $("#loadSign").hide();
                        }
                    });
            }

            //If the user selects no enzymes at all
            else {
                $("#message").html("Please select a Phage.");
            }
        }


        //Once the submit button is pressed, we move to the next tab
        $("#tab").tabs("option", "active", $("#tab").tabs("option", "active") + 1)


        //if the window resizes
        $(window).resize(function () {

            //every time we resize, the value of j becomes the total enzymes selected
            var j = selectedEnzymes.length;

            //emptying the svgDiv
            $(".svgDiv").empty();

            //for all the objects stored in charts array, we use its drawRect function to redraw all svgs
            while (j > 0) {
                charts[j - 1].drawRect();
                j = j - 1;
            }
        })

    });
});