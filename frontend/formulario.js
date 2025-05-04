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
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*'
      },
      body: JSON.stringify({
        nome,
        email,
        telefone,
        interesse,
        experiencia,
      })
    })
    .then(response => {response.json()
      console.log(response.status)
      if(response.status == 201) alert('Inscrição realizada com sucesso!')
      if(response.status == 400) alert('Erro ao enviar os dados!')
    })
    .then(data => console.log('dados enviados com sucesso'))
    .catch(error => alert('Erro ao enviar os dados!'));
  });
  