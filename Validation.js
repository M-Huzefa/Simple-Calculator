function validate() {
    let num1 = document.getElementById("textbox1").value;
    let num2 = document.getElementById("textbox2").value;
    let operation = document.getElementById("operation").value;

    if (isNaN(num1)) {
        alert(`X = ${num1} is not a number. Please enter valid Number`);
        return false
    }
    else if (!num1) {
        alert("you didn't enter any value to X. Please enter some value");
        return false
    }
    else {
        num1 = parseFloat(num1);
    }

    if (isNaN(num2)) {
        alert(`Y = ${num2} is not a number. Please enter valid Number`);
        return false
    }
    else if (!num2) {
        alert("you didn't enter any value to Y. Please enter some value");
        return false
    }
    else {
        num2 = parseFloat(num2)
    }

    if (operation == "--select--") {
        alert("You didn't select any operation to perform. Please select an operation before calculation.");
        return false
    }

    if (num2 == "0" && operation == "/") {
        alert("0 cannot be in denominator");
        return false
    }

    return true;
}