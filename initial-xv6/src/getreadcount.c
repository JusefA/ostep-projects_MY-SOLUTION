// IM A KERNEL HACKER NOW
// ADDED BY JUSEF
#include "types.h"
#include "stat.h"
#include "user.h"

int
main(void)
{
    char c;

    printf(1, "Before reads: %d\n", getreadcount());
    read(0, &c, 1);
    printf(1, "After one read: %d\n", getreadcount());

    exit();
}