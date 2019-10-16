#include<stdio.h>
#include<stdlib.h>
typedef int Position;
struct LNode{
    int Data[13];
    int length;
    Position Last;
};
typedef struct LNode *List;


int main()
{
    List L;
    L=(List)malloc(sizeof(struct LNode));
    L->Last=13;
    int i;
    int s;
    int K;
    scanf("%d",&K);
    for(i=0;i<13;i++)
    {
        scanf("%d",&s);
        L->Data[i]=s;
        
    }
    Position left,right,mid;
    left=1;
    right=L->Last;
    while(left<=right)
    {
        mid=(left+right)/2;
        if(K<L->Data[mid])
        {
            right=mid-1;
        }
        else if(K>L->Data[mid])
        {
            left=mid+1;
        }
        else return mid;
    }
    if(left>right)
    {
        printf("NOT FOUND\n");
    }
}
