defmodule MyRouter do
  use Plug.Router

  plug :match
  plug :dispatch

  match _ do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, File.read! "index.html")
  end
end
