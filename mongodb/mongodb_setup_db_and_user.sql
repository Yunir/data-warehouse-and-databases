use dwdb
db.createUser(
  {
    user: "manager",
    pwd: "ranger",
    roles: [
                { role: "readWrite", db: "dwdb" }
]
  }
)