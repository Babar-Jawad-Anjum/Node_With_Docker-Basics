   import express from "express"

const app = express()

app.get("/",(req,res) => {
    res.send("<h1>Hello from server</h1>")
})

app.listen(3000, () => {
    console.log("Server running on port 3000")
})