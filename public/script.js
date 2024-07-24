const labels = document.querySelectorAll('.form-control label');

labels.forEach(label => {
    label.innerHTML = label.innerText
        .split('')
        .map((letter, idx) => `<span style="transition-delay:${idx * 50}ms">${letter}</span>`)
        .join('')
});

function mostrarMensagem() {
    // Exibe um alerta com a mensagem de "Acesso negado"
    alert("Acesso negado! Você não tem permissão para acessar esta área.");
}
