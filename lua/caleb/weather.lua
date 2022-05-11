local status_ok, weather = pcall(require, "weather")
if not status_ok then
  return
end

vim.g.weather_city = "Chicago"
