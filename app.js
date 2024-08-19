var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");
var fileUpload = require("express-fileupload"); //subidaimagenes
var cors = require("cors");

// agregar variables de entorno
require("dotenv").config();

// sesiones
const session = require("express-session");

var indexRouter = require("./routes/index");
var usersRouter = require("./routes/users");
var loginRouter = require("./routes/admin/login"); // login
var novedadesRouter = require("./routes/admin/novedades"); //novedades

var apiRouter = require("./routes/api");

var app = express();

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "hbs");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

// sesión
app.use(
  session({
    secret: "negra2024",
    cookie: { maxAge: null },
    resave: false,
    saveUninitialized: true,
  })
);

//subidaimg
app.use(
  fileUpload({
    useTempFiles: true,
    tempFileDir: "/tmp/",
  })
);

app.use("/", indexRouter);
app.use("/users", usersRouter);
app.use("/admin/login", loginRouter); // login
app.use("/admin/novedades", novedadesRouter); // novedades
app.use("/api", cors(), apiRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};
  res.status(err.status || 500);
  res.render("error");
});

module.exports = app;
