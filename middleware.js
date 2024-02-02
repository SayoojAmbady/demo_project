const jwt = require("jsonwebtoken");
const config = require("./config");

let checkToken = (req, res, next) => {
    let token = req.headers["authorization"];
    console.log("t'oken", token);

    if (token) {
        token = token.slice(7);
        jwt.verify(token, config.key, (err, decoded) => {
            if (err) {
                return res.json({
                    status: false,
                    msg: 'Invalid Token',
                });
            } else {
                req.decoded = decoded;
                next();
            }
        });
    } else {
        return res.json({
            status: false,
            msg: 'Token not Provided'
        });
    }
};

module.exports = {
    checkToken: checkToken
};
