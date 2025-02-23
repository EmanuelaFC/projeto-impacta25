document.getElementById('form-inscricao').addEventListener('submit', function (e) {
    e.preventDefault();
  
    const nome = document.getElementById('nome').value;
    const email = document.getElementById('email').value;
    const telefone = document.getElementById('telefone').value;
    const interesse = document.getElementById('interesse').value;
    const experiencia = document.getElementById('experiencia').value;
  
    fetch('http://localhost:3000/inscricao', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        nome,
        email,
        telefone,
        interesse,
        experiencia,
      })
    })
    .then(response => response.json())
    .then(_data => alert('Inscrição realizada com sucesso!'))
    .catch(_error => alert('Erro ao enviar os dados!'));
  });
  