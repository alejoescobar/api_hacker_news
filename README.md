# Hacker News - API

This is the API of a public Hacker News clone.  It is based on REST (Representational State Transfer), which makes integration easier by using all the advantages that the HTTP protocol has to offer.

## Format

We use JSON (JavaScript Object Notation) for requests and responses. JSON is a lightweight data-interchange format that is easy to write and read by both machines and humans. JSON is more compact than XML, faster to analyze, and easier to interpret.

## Endpoints

The API of the Hacker News application exposes the following methods:

* List Articles
* List Users
* List Comments of a User
* Create a new Article
* Create a new Comment for an Article

### List Articles

To list all the articles in the Hacker News, make a GET call to the /articles endpoint:
```
GET http://api.muga.com/articles
```

#### Example
Copy and paste the following line to your console:

```
curl -i http://api.muga.com/articles
```

#### Result
If everything works as expected, you will receive a status 200 OK with the items in the body of the response:
```
[ 
  { "title": "Title 1", "body": "Article 1 text", "created_at": "...", "updated_at": "" },
  { "title": "Title 2", "body": "Article 2 text", "created_at": "...", "updated_at": "" },
  { "title": "Title 3", "body": "Article 3 text", "created_at": "...", "updated_at": "" }
]
```

### List Users

To list all the articles in the Hacker News, make a GET call to the /articles endpoint:
```
GET http://api.fakehackernews.com/users
```

#### Example
Copy and paste the following line to your console:

```
curl -i http://api.muga.com.co/users
```

#### Result
If everything works as expected, you will receive a status 200 OK with the items in the body of the response:
```
[ 
  { "username": "Username 1", "email": "Article 1 text", "name": "name 1", "created_at": "...", "updated_at": "" },
  { "username": "Username 2", "email": "Article 2 text", "name": "name 2", "created_at": "...", "updated_at": "" },
  { "username": "Username 3", "email": "Article 3 text", "name": "name 3", "created_at": "...", "updated_at": "" }
]
```

### Create new article

To add a new Article, make a POST call to the /articles endpoint with the title of the item:
```
POST http://api.fakehackernews.com/articles
```
```
{"title": "Title 1", "body": "Description 1"}
```

#### Example
Copy and paste the following line to your console:

```
curl -i -X POST -H 'Content-Type: application/json' -d '{"title": "Title 1", "body": "Description 1"}' http://api.fakehackernews.com/todo_items
```

#### Result
If everything works as expected, you will receive a status 200 OK with the created article:
```
[ 
  { "title": "Title 1", "body": "Description 1", "created_at": "...", "updated_at": "" },
]
```