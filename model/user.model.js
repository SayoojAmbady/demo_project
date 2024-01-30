// const mongoose = require("mongoose");

// const Schema = mongoose.Schema;

// const User = Schema({
//     mobileNo: {
//         type: String,
//         required: true,
//         Unique: true,
//     }
// });
// module.exports = mongoose.model("User",User);


const mongoose = require("mongoose");
const Schema = mongoose.Schema;
const User = Schema({
    mobileNo: {
        type: String,
        required: true,
        unique: true
    },
    password: {
        type: String,
        required: true,
    },
    fullName: {
        type: String,
    },
    gender: {
        type: String,
    },
    alternateMobile: {
        type: String,
    },
    hint: {
        type: String,
    }
})

module.exports = mongoose.model("User", User);
// column = filed
// row = document
