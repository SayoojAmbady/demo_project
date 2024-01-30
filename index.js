require ('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const port = process.env.PORT || 3000;
const app = express();

mongoose.connect(`mongodb+srv://sayoojsunil:${process.env.mongodbPassword}@cluster0.cxkqacu.mongodb.net/MyntraDb?retryWrites=true&w=majority`);

 
const connection = mongoose.connection;
connection.once("open", () => 
    console.log("MongoDb is successfully connected")
)

//middleware
app.use(express.json());
const loginRoutes = require("./routes/login.routes");
app.use("/login",loginRoutes);

app.route("/").get((req,res)=>{
    res.json("Server is configure")
});



app.listen(port,"0.0.0.0",()=>{console.log("Welcome to port:",port);
})








