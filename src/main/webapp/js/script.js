//each part ready function use for 1 event

//function for validate
$(document).ready(function(){

    $.validator.addMethod("validateName", function(value, element){
        return this.optional(element) /* return true if element is blank and not required*/|| /^[a-zA-Z]{1,}$/.test(value);
    }, "Must only contain character");

    $.validator.addMethod("validatePhone", function(value, element){
        return this.optional(element) || /^[0-9]{1,}$/.test(value);
    }, "Must only contain numbers");

    $.validator.addMethod("validateEmail", function(value, element){
        return this.optional(element) || /^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$/.test(value);
    }, "Must follow form of normal email");

    $("#formPer").validate({
        rules:{
            firstName: {
                maxlength: 20,
                validateName: true
            },

            lastName: {
                maxlength: 20,
                validateName: true
            },

            telephone:{
                maxlength: 11,
                validatePhone: true
            },

            email:{
                maxlength: 50,
                validateEmail: true
            },

            description:{
                maxlength: 200
            }

         
        },

       
    });


})

//function for filter







