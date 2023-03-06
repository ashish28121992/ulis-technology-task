const Joi = require('joi');
const userSchema = Joi.object({
  name: Joi.string().required(),
  email: Joi.string().email().required(),
  Password: Joi.string().pattern(new RegExp("^[a-zA-z0-9]{3,100}$")).required(),
  image: Joi.binary()
  .min(1)
  .max(1 * 1024 * 1024) 
  .required()
});

const validateUser = async (req,res,next) => {
  
  const { error } = await userSchema.validate(req.body.image);
  if (error) {
    res.send (error.details[0].message);
  }
 
  else{
    next()
  }
}

module.exports = {validateUser} 