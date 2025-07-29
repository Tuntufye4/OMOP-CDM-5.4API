const pool = require('../db');

exports.getAllObservationPeriods = async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM observation_period LIMIT 100');
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getObservationPeriodById = async (req, res) => {
  try {
    const { id } = req.params;
    const { rows } = await pool.query('SELECT * FROM observation_period WHERE observation_period_id = $1', [id]);
    if (rows.length === 0) return res.status(404).json({ error: 'Not found' });
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
