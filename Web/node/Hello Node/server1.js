const path = require('path')
const express = require('express')
const app = express()
const port = 3001

app.use(express.static('public'))

app.use(express.json())

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname + '/public/view/index.html'))
})

app.get('/about', (req, res) => {
  res.send('about!')
})

app.post('/about', (req, res) => {
  /* const body = req.body
  const id = body.id
  const title = body.title
  const content = body.content */

  const { id, title, content } = req.body

  res.send({
    id: id,
    title: title,
    content: content,
  })
})

app.listen(port, () => {
  console.log(`Server is running on ${port}`)
})
