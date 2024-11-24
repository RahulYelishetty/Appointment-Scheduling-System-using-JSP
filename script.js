// JavaScript to update sub-services based on selected category
function updateSubOptions() {
    const service = document.getElementById("service");
    const subService = document.getElementById("subService");

    const options = {
        "Health and Wellness": ["Spa", "Massage"],
        "Education": ["Colleges", "Schools"],
        "Medicine": ["Doctors", "Dentists"],
        "Salon and Beauty": ["Hair Salon", "Braiding", "Tattoo"]
    };

    const selectedService = service.value;
    subService.innerHTML = "";

    if (options[selectedService]) {
        options[selectedService].forEach(option => {
            const opt = document.createElement("option");
            opt.value = option;
            opt.textContent = option;
            subService.appendChild(opt);
        });
    }
}

// JavaScript for form validation and password matching on Sign Up
function validateForm() {
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;

    if (password !== confirmPassword) {
        alert("Passwords do not match!");
        return false;
    }
    return true;
}

// JavaScript for Login Validation
function validateLoginForm() {
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    if (username === "" || password === "") {
        alert("Please fill out both fields!");
        return false;
    }
    return true;
}
