const pool = require('../db');

exports.getAllSources = async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM cdm_source LIMIT 100');
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.getSourceByName = async (req, res) => {
  try {
    const { id } = req.params;
    const { rows } = await pool.query('SELECT * FROM cdm_source WHERE cdm_source_name = $1', [id]);
    if (rows.length === 0) return res.status(404).json({ error: 'Not found' });
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
