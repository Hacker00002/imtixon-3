import jwt from "jsonwebtoken";
import express, { Request, Response, NextFunction } from "express";

const SECRET_KEY = "hacker";

const checkTokenUser = (req: Request, res: Response, next: NextFunction) => {
  try {
    const { token } = req.headers;
    if (!token) {
      throw new Error("Token required");
    }
    const { agent } = jwt.verify(token, SECRET_KEY);
    if (req.headers["user-agent"] != agent) {
      throw new Error(
        "This device cannot send a request. Only one device can send a request"
      );
    }
    if (req.headers["user-agent"] != agent) {
      throw new Error(
        "This device cannot send a request. Only one device can send a request"
      );
    }
    next();
  } catch (error) {
    res.json(400, {
      status: 400,
      message: error.message,
    });
  }
};

export = checkTokenUser;
