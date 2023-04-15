defmodule TuneinWeb.PageView do
  use TuneinWeb, :view

  @compile {:no_warn_undefined, {Routes, :page_session_path, 2}}
end
