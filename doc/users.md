## GET /users
Works! (now write some real specs).

### Example

#### Request
```
GET /users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 2
Content-Type: application/json; charset=utf-8
ETag: W/"4f53cda18c2baa0c0354bb5f9a3ecbe5"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d8b6a535-d2e9-44ee-bf7b-35b10056c7ac
X-Runtime: 0.013779
X-XSS-Protection: 1; mode=block

[

]
```

## POST /users
ユーザーを作成.

### Example

#### Request
```
POST /users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 51
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user[name]=test_user&user[email]=test%40example.com
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 134
Content-Type: application/json; charset=utf-8
ETag: W/"30d32b8ab39533839e1c356d5ef2df1a"
Location: http://www.example.com/users/1
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7ad45e6e-606f-4e96-a1df-59f5059d8a6e
X-Runtime: 0.009327
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "name": "test_user",
  "email": "test@example.com",
  "created_at": "2016-09-25T15:23:37.345Z",
  "updated_at": "2016-09-25T15:23:37.345Z"
}
```

## DELETE /users
ユーザーを削除.

### Example

#### Request
```
DELETE /users/2 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3f7fe3e8-e212-4737-9919-f8d82b780b5d
X-Runtime: 0.008535
X-XSS-Protection: 1; mode=block
```
