const express = require('express');
const app = express();
require('dotenv').config();

app.use(express.json());

// OMOP CDM v5.4 routes
app.use('/person', require('./routes/person'));
app.use('/observation_period', require('./routes/observation_period'));
app.use('/visit_occurrence', require('./routes/visit_occurrence'));
app.use('/visit_detail', require('./routes/visit_detail'));
app.use('/condition_occurrence', require('./routes/condition_occurrence'));
app.use('/drug_exposure', require('./routes/drug_exposure'));
app.use('/procedure_occurrence', require('./routes/procedure_occurrence'));
app.use('/device_exposure', require('./routes/device_exposure'));
app.use('/measurement', require('./routes/measurement'));
app.use('/observation', require('./routes/observation'));
app.use('/note', require('./routes/note'));
app.use('/note_nlp', require('./routes/note_nlp'));
app.use('/specimen', require('./routes/specimen'));
app.use('/death', require('./routes/death'));
app.use('/location', require('./routes/location'));
app.use('/care_site', require('./routes/care_site'));
app.use('/provider', require('./routes/provider'));
app.use('/payer_plan_period', require('./routes/payer_plan_period'));
app.use('/cost', require('./routes/cost'));
app.use('/drug_era', require('./routes/drug_era'));
app.use('/dose_era', require('./routes/dose_era'));
app.use('/condition_era', require('./routes/condition_era'));
app.use('/episode', require('./routes/episode'));
app.use('/episode_event', require('./routes/episode_event'));
app.use('/metadata', require('./routes/metadata'));
app.use('/cdm_source', require('./routes/cdm_source'));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`OMOP CDM API running on port ${PORT}`));
  