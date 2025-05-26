
with userids as (
  INSERT INTO users (name) VALUES ('user1'), ('user2') RETURNING id
)
INSERT INTO posts (owner_id, text)
SELECT id, id || ' post text'
FROM userids;
