const express = require('express')
const app = express()
const port = 3000

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));

app.set('view engine','ejs');
app.set('views','./views');

app.use('/static', express.static('static'));
app.use('/uploads', express.static('uploads'));

var mysql = require('mysql');
var conn = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'ewha'
});

/* 목록 */
app.get('/news', (req, res) => {
  var sql = 'SELECT * FROM news';
  conn.query(sql, function(err, news, fields){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.render('news', {news:news});
    }
  });
});

/* 추가 */
app.get('/news/add', (req, res) => {
  res.render('news_add', {});
});

/* Form 데이터 DB INSERT */
app.post('/news/add', (req, res) => {
  var title = req.body.title;
  var desc = req.body.desc;
  var author = req.body.author;

  var sql = 'INSERT INTO news (`title`, `desc`, `author`) VALUES(?, ?, ?)';
  conn.query(sql, [title, desc, author], function(err, result, fields){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.redirect('/news/' + result.insertId);
    }
  });
});

/* 수정 */
app.get('/news/:id/edit', (req, res) => {
  var id = req.params.id;
  var sql = 'SELECT * FROM news WHERE id=?';
  conn.query(sql, [id], function(err, news, fields){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.render('news_edit', {news:news[0]});
    }
  });
});

/* Form 데이터 DB UPDATE */
app.post('/news/:id/edit', (req, res) => {
  var id = req.params.id;
  var title = req.body.title;
  var desc = req.body.desc;
  var author = req.body.author;

  var sql = 'UPDATE news SET title = ?, `desc`= ?, `author` = ? WHERE id = ?;';
  conn.query(sql, [title, desc, author, id], function(err, result, fields){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.redirect('/news/' + id);
    }
  });
});

/* Delete confirmation */
app.get('/news/:id/delete', (req, res) => {
  var id = req.params.id;
  var sql = 'SELECT * FROM news WHERE id=?';
  conn.query(sql, [id], function(err, news, fields){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.render('news_delete', {news:news[0]});
    }
  });
});

/* DELETE DB row */
app.post('/news/:id/delete', (req, res) => {
  var id = req.params.id;

  var sql = 'DELETE FROM news WHERE id = ?';
  conn.query(sql, [id], function(err, result, fields){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.redirect('/news/');
    }
  });
});

/* 상세보기 */
app.get('/news/:id', (req, res) => {
  var id = req.params.id;
  var sql = 'SELECT * FROM news WHERE id=?';
  conn.query(sql, [id], function(err, news, fields){
    if(err){
      console.log(err);
      res.status(500).send('Internal Server Error');
    } else {
      res.render('news_detail', {news:news[0]});
    }
  });
});

/* Port listening */
app.listen(port, () => console.log(
    `Server is running... http://localhost:${port}`
))
