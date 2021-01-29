--------------------------- MODULE SimpleProgram ---------------------------
EXTENDS Integers
VARIABLES i, pc   

Init == (pc = "start") /\ (i = 0)

Pick == /\ pc = "start"  
        /\ i' \in 0..1000
        /\ pc' = "middle"

Add1 == /\ pc = "middle" 
        /\ i' = i + 1
        /\ pc' = "done"  
           
Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Fri Jan 29 11:44:17 IST 2021 by prathikrajendran
\* Created Fri Jan 29 11:37:45 IST 2021 by prathikrajendran
