local status_ok, _ = pcall(require, "weather")
if not status_ok then
  vim.notify("weather.lua failed to load", "error")
  return
end

vim.g.weather_city = "Chicago"
