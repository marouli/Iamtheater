require('dotenv').config()
const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const path = require('path');
const dateFormat = require('dateformat');
const fs = require("fs");
const util = require("util");
const JSON = require("json");
const readFileAsync = util.promisify(fs.readFile);
// ES6 destructuring
// const pg = require("pg");
// const Pool = pg.Pool;
const { Pool } = require("pg");
const db = new Pool({
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASS
});

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(__dirname + '/public'));



app.get('/', (req, res) => {
    res.render('index');
});

app.get('/agenda', (req, res) => {
    db.query(`
        SELECT play.play_id, play.title, theater.name, theater.theater_url, showtime.play_date
        FROM showtime 
            INNER JOIN play
                ON showtime.play_id = play.play_id
            INNER JOIN theater
                ON showtime.theater_id = theater.theater_id
            ORDER BY showtime.play_date
    `).then(result => {
        res.render("agenda", {
            information: result.rows
        });
    })
    .catch(error => {
        console.log("Error while quering", error.stack);
        res.status(500).end("Server error");
    });

    // db.connect()
    //     .then(client => {

    //         client.query("")
    //             .then(result => {
    //                 client.release();
    //                 res.render("agenda", {
    //                     plays: result.rows,
    //                     theaters: result.rows
    //                 });
    //             })
    //             .catch(error => {
    //                 client.release();
    //                 console.log("Could not get plays!", error.stack);
    //             });
    //     })
});

app.get('/international', (req, res) => {
    db.query(`
        SELECT play.play_id, play.title, play.language, theater.name, theater.theater_url, showtime.play_date
        FROM showtime 
            INNER JOIN play
                ON showtime.play_id = play.play_id 
            INNER JOIN theater
                ON showtime.theater_id = theater.theater_id
            GROUP BY play.play_id, theater.theater_id, showtime.showtime_id
            HAVING play.language != 'Dutch'
            ORDER BY showtime.play_date
    `).then(result => {
        res.render("agenda", {
            information: result.rows
        });
    })
    .catch(error => {
        console.log("Error while quering", error.stack);
        res.status(500).end("Server error");
    });
});

app.get('/byDate/:date', (req, res) => {
    let arrayDate = req.params.date.split('-')
    let year = arrayDate[0]
    let month = arrayDate[1]
    let day = arrayDate[2]
    let searchDate = new Date(Date.UTC(year, --month, day, 00, 00));
    let formatedDate = dateFormat(searchDate, "UTC:dddd dd mmm yyyy");
    db.query(`
        SELECT play.play_id, play.title, play.language, theater.name, theater.theater_url, showtime.play_date
        FROM showtime 
            INNER JOIN play
                ON showtime.play_id = play.play_id 
            INNER JOIN theater
                ON showtime.theater_id = theater.theater_id
            GROUP BY play.play_id, theater.theater_id, showtime.showtime_id
            HAVING showtime.play_date =  $1`, [ formatedDate ])
    .then(result => {
        console.log(result.rows)
        res.render("agenda", {
            information: result.rows
        });
    })
    .catch(error => {
        console.log("Error while quering", error.stack);
        res.status(500).end("Server error");
    });
});

app.get('/play/:playTitle', (req, res) => {
    db.query(`
        SELECT play.*, theater.*, showtime.*
        FROM showtime 
            INNER JOIN play
                ON showtime.play_id = play.play_id 
            INNER JOIN theater
                ON showtime.theater_id = theater.theater_id
                WHERE play.title = $1`, [req.params.playTitle])
    .then(result => {
        const playData = result.rows[0];
        if(!playData) {
            res.redirect('/agenda');
        } else {          
            res.render("about-play", {
                play: playData
            });            
        }

    })
    .catch(error => {
        console.log("Error while quering", error.stack);
        res.status(500).end("Server error");
    });
});

app.post('/signUp', (req, res) => { 
    db.query("INSERT INTO newsletter_users ( email ) VALUES ( $1 )", [ req.body.email ])
    .then(result => {
        res.setHeader('Content-Type', 'application/json');
        console.log(req.body.email + ' success');
        res.json({ result: 'success' }).end();
    })
    .catch(error => {
        res.setHeader('Content-Type', 'application/json');
        console.log(req.body.email + ' failure');
        res.json({ result: 'failure' }).end();
    })
});

app.get('*', (req, res) => {
  res.status(404).end("Page not found, sorry!");
});

app.listen(8080);








