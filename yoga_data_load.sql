
-- Creating table into which I will put my yoga class attendance data 

CREATE TABLE visit_history (
    date date, 
    day text, 
    time text, 
    teacher text, 
    location text, 
    payment_method text, 
    class_type text,
    status text, 
    web text, 
    ref_number text, 
    meow text -- added blank column due to lingering whitespace ? 
); 

-- adding data from csv file (from mindbody website)

COPY visit_history FROM '/Users/chanks/workspace/yoga/chanks_mindbody.csv'
WITH (FORMAT CSV, HEADER);

-- removing placeholder column 'meow': 
alter table visit_history drop column meow;

select * from visit_history; 

--let's export this dataset to csv: 

COPY visit_history TO '/Users/chanks/workspace/yoga/chanks_mindbody_clean.csv'
WITH (FORMAT CSV, HEADER);