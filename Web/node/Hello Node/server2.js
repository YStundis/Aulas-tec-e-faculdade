const http = require('http')

const host = 'localhost'
const port = 3002

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html; charset=utf-8' })

  const url = req.url

  if (url == '/' || url == '/home') {
    res.end('Home')
    return
  }
  if (url == '/about') {
    res.end('About Us')
    return
  }
  if (url == '/contact') {
    res.end('Talk to Us')
    return
  }

  res.writeHead(404, { 'Content-Type': 'text/html; charset=utf-8' })
  res.end('Page Not Found')
})

server.listen(port, host, () => {
  console.log(`Server is running on http://${host}:${port}`)
})
