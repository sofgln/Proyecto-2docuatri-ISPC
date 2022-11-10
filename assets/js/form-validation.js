const form = document.querySelector(".form");
const btnForm = document.querySelector("#btn-form");

btnForm.addEventListener("click", (e) => {
  e.preventDefault();

  validarInputs();
});

const validarInputs = () => {
  let inputs = document.querySelectorAll(".form_input[required]");

  inputs.forEach((input) =>
    input.value !== "" ? "validado" : showError(input.name)
  );
};

const showError = (input) => alert("Revisa el campo " + input + "!", "danger");


const alertPlaceholder = document.querySelector("#liveAlertPlaceholder");

const alert = (message, type) => {
  const wrapper = document.createElement("div");
  wrapper.innerHTML = [
    `<div class="alert alert-${type} alert-dismissible" role="alert">`,
    `   <div>${message}</div>`,
    '   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>',
    "</div>",
  ].join("");

  alertPlaceholder.append(wrapper);
};
