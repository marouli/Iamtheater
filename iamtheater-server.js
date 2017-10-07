const express = require("express");
const app = express();
const path = require('path');
// ES6 destructuring
// const pg = require("pg");
// const Pool = pg.Pool;
const { Pool } = require("pg");
const db = new Pool({
  host: "localhost",
  database: "iamtheater",
  user: "postgres",
  password: "postgres"
});

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');
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


// app.get('/agenda', async (req, res) => {

//   let client = null;
//   try {
//     client = await db.connect();

//     // without ES6 destructuring:
//     const playResult = await client.query("SELECT * FROM play");
//     const playInfo = playResult.rows;

//     // with ES6 destructuring:
//     // const { rows: [ playInfo ] } = await client.query("SELECT * FROM play");
//     if (!playInfo) {
//       res.status(404).end("Play not found!");
//       return;
//     }

//     const theaterResult = await client.query("SELECT * FROM theater");
//     const theaterInfo = theaterResult.rows;
//     if (!theaterInfo) {
//       res.status(404).end("Theater not found!");
//       return;
//     }

//     res.render('agenda', {
//       plays: playInfo,
//       theaters: theaterInfo
//     });

//   } catch (error) {
//     console.error("Error while querying", error.stack);
//     res.status(500).end("Server error");

//   } finally {
//     if (client)
//       client.release();
//   }
// });

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


app.get('*', (req, res) => {
  response.status(404).end("Page not found, sorry!");
});

app.listen(8080);

