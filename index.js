require ('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const app = express();
const PORT = 3000;
const fs = require('fs');

const caPath = 'ca.pem';

mongoose.connect(`mongodb+srv://sayoojsunil:${process.env.mongodbPassword}@cluster0.cxkqacu.mongodb.net/MyntraDb?retryWrites=true&w=majority`),
{ useNewUrlParser: true,
    useUnifiedTopology: true,
    ssl: true, // Enable SSL
    sslValidate: true, // Validate the certificate
    sslCA: fs.readFileSync('path/to/ca.pem'), // Path to CA file
  };

 
const connection = mongoose.connection;
connection.once("open", () => 
    console.log("MongoDb is successfully connected")
)

//middleware
app.use(express.json());
const loginRoutes = require("./routes/login.routes");
const userDetailsRoutes = require("./routes/user_details.routes");
const productDetailsRoutes = require("./routes/product_details.routes");
app.use("/login",loginRoutes);
app.use("/user-details", userDetailsRoutes)
app.use("/user-details;",userDetailsRoutes)
app.use("/product-details", productDetailsRoutes)

app.route("/").get((req,res)=>{
    res.json("Hello All")
});



app.listen(PORT,()=>{console.log(`Server is running on port ${PORT}`);
});











