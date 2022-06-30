import vim
from datetime import datetime

# expects date string of format Year-month-day from name and returns date in format of Day Weekday e.g. = 10 Friday =
def get_formatted_date(name):
    date = datetime.strptime(name, "%Y-%m-%d")
    vim.command(f"let date = '{date.strftime('= %d %A =')}'")


# expects date string of format Year-month-day from name; returns 1 if sunday and 0 if not
def is_sunday(name):
    date = datetime.strptime(name, "%Y-%m-%d")
    vim.command(f"let is_sunday = '{int(date.weekday() == 6)}'")
