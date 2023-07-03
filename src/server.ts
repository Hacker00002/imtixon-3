import express, { Application, NextFunction, Request, Response } from "express";    

const app: Application = express();

app.use(express.json());

app.use((err: any, req: Request, res: Response, next: NextFunction) => {
  res.status(400).json({ status: 400, message: err.message });
});

app.listen(5000, () => console.log("server succesfully running"));
