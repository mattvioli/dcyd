def posts_data
  run_sql("SELECT * FROM posts;")
end
# need to add inner join to user ID/username