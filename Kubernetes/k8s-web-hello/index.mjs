import express from 'express'
import os from 'os'

const app = express()
const PORT = 3000

app.get("/", (req, res) => {
    const helloMessage = `VERSION 2: This is sound of Hello from ${os.hostname()}`  // Use backticks for template literals
    console.log(helloMessage)
    res.send(helloMessage)
})

app.listen(PORT, () => {
    console.log(`Web server is listening at port ${PORT}`)  // Use backticks here too
})