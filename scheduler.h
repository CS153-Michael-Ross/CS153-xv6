#ifndef XV6_SCHEDULER
#define XV6_SCHEDULER

struct proc;

struct proc * getHighestProc();
void donate();

#endif
