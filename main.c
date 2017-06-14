#include <stdio.h>
#include <malloc.h>

typedef struct header{
    unsigned int data :31;
    unsigned int allocated :1;
}HEADER;

HEADER *global;

HEADER *alloc(HEADER *pointer, unsigned int size){
    unsigned int tempSize= pointer->data-size-sizeof(HEADER);

    if((int)tempSize<=(int)sizeof(HEADER)){
        size=pointer->data;
    }
    else{
        HEADER *temp=(HEADER*)(((char *)pointer) + size + sizeof(HEADER));
        temp->data=tempSize;
        temp->allocated=0;
    }

    HEADER *new=pointer;
    new->data=size;
    new->allocated=1;
    return new;
}

void *memory_alloc(unsigned int size){
    HEADER *pointer=global+1;
    unsigned int counter=4;

    while(counter<global->data){
        counter+=pointer->data+sizeof(HEADER);
        if(pointer->allocated == 0 && pointer->data >= size){
            alloc(pointer,size);
            return pointer+1;
        }
        else pointer=(HEADER*)(((char *)pointer) + pointer->data + sizeof(HEADER));
    }
    return NULL;
}

int memory_free(void *valid_ptr){
    unsigned int counter=4;
    HEADER *pointer=(HEADER *)valid_ptr-1;
    HEADER *temp;

    pointer->allocated=0;
    pointer=global+1;

    while(counter<global->data){
        counter+=pointer->data+sizeof(HEADER);
        if(pointer->allocated==0 && counter+pointer->data+sizeof(HEADER)<global->data){
            temp=pointer;
            pointer=(HEADER*)(((char *)pointer) + pointer->data + sizeof(HEADER));
            if(pointer->allocated==0){
                counter-=temp->data-sizeof(HEADER);
                temp->data+=pointer->data+ sizeof(HEADER);
                pointer=temp;
            }
        }
        else pointer=(HEADER*)(((char *)pointer) + pointer->data + sizeof(HEADER));
    }
    return 0;
}

void memory_init(void * pointer, unsigned int size){
    HEADER *temp =(HEADER*)pointer;

    temp->data=size;
    temp->allocated=1;
    temp+=1;
    temp->data=size;
    temp->allocated=0;

    global=temp-1;
}

int memory_check(void *ptr) {
    ptr-=4;
    unsigned int counter=4;
    HEADER *temp=global+1;

    if((HEADER*)ptr==global){
        return 1;
    }
    while(counter<global->data){
        counter+=temp->data+sizeof(HEADER);
        if(temp==(HEADER*)ptr){
            return 1;
        }
        else{
            temp=(HEADER*)(((char *)temp) + temp->data + sizeof(HEADER));
        }
    }
    return 0;
}

