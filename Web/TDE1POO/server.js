const { randomUUID } = require('crypto')
const express = require('express')
const fs = require('fs')
const app = express()
const port = 3000

let veiculos = []

fs.readFile('mocks/veiculos.json', 'utf-8', (err, data) => {
  if (err) {
    console.log(err)
  } else {
    veiculos = JSON.parse(data)
  }
})

app.use(express.json())

app.get('/', (req, res) => {
  res.send('/')
})

// CREATE
app.post('/veiculos', (req, res) => {
  const { name, color, price } = req.body

  const veiculo = {
    id: randomUUID(),
    name: name,
    color: color,
    price: price,
  }

  veiculos.push(veiculo)

  veiculoFile()

  res.send(veiculo)
})

// READ
app.get('/veiculos', (req, res) => {
  res.send(veiculos)
})

// READ ONE
app.get('/veiculos/:id', (req, res) => {
  const { id } = req.params

  const veiculo = veiculos.find((veiculo) => veiculo.id === id)

  res.send(veiculo)
})

// UPDATE ONE
app.put('/veiculos/:id', (req, res) => {
  const { id } = req.params
  const { name, color, price } = req.body

  const veiculoIndex = veiculos.findIndex((veiculo) => veiculo.id === id)

  veiculos[veiculoIndex] = {
    ...veiculos[veiculoIndex],
    name,
    color,
    price,
  }

  veiculoFile()

  res.send(veiculos[veiculoIndex])
})

// DELETE
app.delete('/veiculos/:id', (req, res) => {
  const { id } = req.params

  const veiculoIndex = veiculos.findIndex((veiculo) => veiculo.id === id)

  veiculos.splice(veiculoIndex, 1)

  veiculoFile()

  res.send({ message: 'Removed' })
})

const veiculoFile = () => {
  fs.writeFile('mocks/veiculos.json', JSON.stringify(veiculos), (err) => {
    if (err) {
      console.log(err)
    } else {
      console.log('Inserted')
    }
  })
}

app.listen(port, () => {
  console.log(`Server is running on ${port}`)
})
