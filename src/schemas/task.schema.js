import { body } from "express-validator";

export const createTaskSchema = [
  
  body("title")
    .isString().withMessage("Title must be a string")
    .notEmpty().withMessage("Title is required"),

  body("description")
    .optional()
    .isString().withMessage("Description must be a string"),

  body("date")
    .optional()
    .isISO8601().withMessage("Date must be a valid ISO 8601 string"),

  body("completed")
    .optional()
    .isBoolean().withMessage("Completed must be a boolean"),
];
