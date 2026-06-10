# Wavelength Listening Database

Starter repository for the Wavelength Listening Database sprint.

## Setup

1. Fork and clone this repository
2. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Create the Postgres database:
   ```bash
   createdb wavelength
   ```

## Project structure

```
py-wavelength-listening-db/
├── src/
│   ├── schema.sql        # Your CREATE TABLE statements
│   ├── seed.sql          # Your INSERT statements
│   └── db.py             # Python connection and schema verification
├── data/
│   ├── artists.json
│   ├── tracks.json
│   ├── playlists.json
│   ├── users.csv
│   ├── listening_events.json
│   └── raw_listening_log.csv   # Used for the normalisation audit
├── NOTES.md              # Your design decisions and reflections
└── README.md
```

## Data

The `data/` folder contains sample Wavelength listening data. Use it to understand the domain, validate your schema design, and seed your database.

`raw_listening_log.csv` is a flat, denormalized version of the same data — you will use it in the normalisation audit task.
