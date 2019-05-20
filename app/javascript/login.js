$(() => {
  // Focus the first input on load
  window.onload = function() {
    document.querySelector("input").focus();
  }; 
  // Get all imputs
  const mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  const emailInput = document.getElementById('caregiver_email');
  const passInput = document.getElementById('caregiver_password');
  const inputsFocus = document.querySelectorAll('input');


  window.one = inputsFocus[2];

  if(inputsFocus[2].value != "") {
      inputsFocus[2].previousElementSibling.className += "form-label-focus"; 
  };
 
  // Add a focus event to every each input
  inputsFocus.forEach((inputFocus) => {
    inputFocus.addEventListener('focus', (event) => {
      event.target.previousElementSibling.classList.add("form-label-focus"); 
    });
  })
  // Blur event for every each input 
  inputsFocus.forEach((inputFocus) => {
    inputFocus.addEventListener('blur', (event) => {
      // if input is fill up don't blur
      if(inputFocus.value == "" ){
        event.target.previousElementSibling.classList.remove("form-label-focus");
      } 
    });
  })
  // Email validation
  emailInput.addEventListener('keyup', (event) => {
    if (!emailInput.value.match(mailformat)) {
      emailInput.style.borderColor = 'red';
    } else {
      emailInput.style.borderColor = 'green';
    }
  });
  // Passworrd validation
  passInput.addEventListener('keyup', (event) => {
    if (passInput.value == "") {
      passInput.style.borderColor = 'red';
    } else { label: false
      passInput.style.borderColor = 'green';
    }
  });
  // activate Button
  document.addEventListener("keyup", function(){
    if (emailInput.value !== "" && passInput.value !== "" && emailInput.value.match(mailformat)) {
      document.getElementById('submit').disabled = false;
    } else {
      document.getElementById('submit').disabled = true;
    }
  });
  // show password
  document.getElementById("show").addEventListener("click", function(){
    const show = document.getElementById("password");
    if (show.type === "password") {
      show.type = "text";
      document.getElementById("show").innerHTML = "<i class='fas fa-eye'></i>";
    } else {
      show.type = "password";
      document.getElementById("show").innerHTML = "<i class='fas fa-eye-slash'></i>";
    }
  });
})
