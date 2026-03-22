radio = playlist("/music")

output.icecast(
  %mp3(bitrate=64),
  host="localhost",
  port=10000,
  password="1234",
  mount="/stream",
  radio
)
