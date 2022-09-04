const { randomUUID } = require('crypto')
const express = require('express')
const fs = require('fs')
const app = express()
const port = 3000

let products = []

fs.readFile('mocks/products.json', 'utf-8', (err, data) => {
  if (err) {
    console.log(err)
  } else {
    products = JSON.parse(data)
  }
})

app.use(express.json())

app.get('/', (req, res) => {
  res.send('/')
})

// CREATE products
app.post('/products', (req, res) => {
  const { name, price } = req.body

  const product = {
    id: randomUUID(),
    name: name,
    price: price,
  }

  products.push(product)

  productFile()

  res.send(product)
})

// READ products
app.get('/products', (req, res) => {
  res.send(products)
})

// READ ONE product
app.get('/products/:id', (req, res) => {
  const { id } = req.params

  const product = products.find((product) => product.id === id)

  res.send(product)
})

// UPDATE ONE product
app.put('/products/:id', (req, res) => {
  const { id } = req.params
  const { name, price } = req.body

  const productIndex = products.findIndex((product) => product.id === id)

  produc2ts[productIndex] = {
    ...products[productIndex],
    name,
    price,
  }

  productFile()

  res.send(products[productIndex])
})

// DELETE product
app.delete('/products/:id', (req, res) => {
  const { id } = req.params

  const productIndex = products.findIndex((product) => product.id === id)

  products.splice(productIndex, 1)

  productFile()

  res.send({ message: 'Product removed' })
})

const productFile = () => {
  fs.writeFile('mocks/products.json', JSON.stringify(products), (err) => {
    if (err) {
      console.log(err)
    } else {
      console.log('Product Inserted')
    }
  })
}

app.listen(port, () => {
  console.log(`Server is running on ${port}`)
})
