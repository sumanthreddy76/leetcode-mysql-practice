# Write your MySQL query statement below

#where conditions like %DIAB1%
#used % fn becaused question is asking condition startsn with 
# 3,4 lines approach is correct but syntax is wrong(seen solution)
#group by conditions(group by clause not required )
#forget to use space in % DIAB1%

select patient_id,patient_name,conditions
from Patients 
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'
