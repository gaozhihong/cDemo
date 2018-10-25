//
//  ViewController.m
//  cDemo
//
//  Created by apple on 2018/10/10.
//  Copyright © 2018年 HYR. All rights reserved.
//

#import "ViewController.h"
#include <stdio.h>
#include <stdlib.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self demo3];
//    [self demo4:3 max:5];
//    [self demo5];
    
//    [self demo6];
//    [self demo7];
//    three_hellos();
//    [self demo8];
//    hong();
//    [self demo9];
//    [self demo12];
//    [self demo13];
//    [self demo10];
//    [self demo14];
//    printf("%lu",getHashIndex("hello!", 32));
//    int hash =  addHash("AA",5);
//    printf("%d",hash);
//       createLink();
//    createTree(T);
//    float  res= fac(4);
//    printf("%f",res);
//    [self demo11];
//    [self demo99];
    //    [self demo17];
//    int arr[] = {600,20,60,50,100};
//    int len = sizeof(arr) /sizeof(int);
//    quick_sort(arr, 0, len-1);
//    for (int i = 0; i < len; i++) {
//        printf("%d ",arr[i]);
//    }
}


 //求101 - 200 之间的素数
-(void)demo1 {
    int n = 0,k,leap = 0;
    for (int m = 101;m <=200; m++){
        k = sqrt(m);
        for ( int i = 2; i <=k ; i++) {
            if (m%i == 0) {
                leap = 0;//问题出在这一句了
                break;
            }else{
                leap = 1;
            }
        }
        if (leap == 1) {
            n ++;
            printf("\n%d",m);
        }
        leap = 0;
    }
    printf("\n101到200之间共有%d个素数",n);
}
 //求最大公约数 最小公倍数
-(void)getNumber:(int)a and:(int)b {
    if (a==0 || b ==0 ){
        return;
    }
    if (a < b ) { //交换位置
        int temp = a;
        a = b;
        b = temp;
    }
    int m ,n,temp;
    m = a ; n = b;
    while (n != 0) {
        temp = m % n;
        m = n;
        n = temp;
    }
    printf("最大公约数为：%d\n",m);
    printf("最小公倍数为：%d",a*b /m);
}
 //输入一行字付 分别统计英文字母 空格 数字和其他
-(void)demo3 {
    const char *c = "nihao:WOSHI!6661"; //不包括汉字
    int  letterNumber = 0 ,others = 0,numbers =0;
    for (int i = 0; i < strlen(c); i++) {
        char  chr = c[i];
        if ((chr >='a' && chr <='z') || (chr >='A'&& chr <='Z')) {
            letterNumber ++;
        }else if(chr >='0' && chr <= '9'){
             numbers++;
        }else{
            others++;
        }
    }
    printf("英文字母的个数为%d\n",letterNumber);
    printf("数字的个数为%d\n",numbers);
    printf("其他格式字母的个数为%d\n",others);
    
}
  // s =2+22+222+2222+22222+222222
-(void)demo4:(int)num max:(int)max{
    
    long sn = 0,tn = 0;
    int a = 0,b = 0, count = 1;
    a = num; b = max;
    while (count <= b) {
        tn = tn +a;
        sn = sn +tn;
        a = a*10;
        ++count;
    }
    printf("a+aa+aaa+... =%ld",sn);
}
/**一球从100米高度自由落下，每次落地后反跳回原高度的一半；再落下，
求它在第10次落地时，共经过多少米？第10次反弹多高？
 */
-(void)demo5{
    float sn = 100,hn = sn/2.0;
    for (int i = 2; i < 10; i++) {
        sn = sn+2*hn;
        hn = hn/2.0;
    }
    printf("共经过%lf米\n",sn);
    printf("第十次反弹高度为%f",hn);
}
 // 猴子偷桃的问题
-(void)demo6 {
    int n = 1;
    int s = 0;
    for (int i = 1; i <10; i++) {
//        sn = sn+n ;
//        s = 2*(n+1);
//        n = s;
        n = 2*(n +1);
    }
    printf("第一天一共摘了%d个桃子",s);
}
 /**
 画一个菱形 
  */
-(void)demo7{
    
    for(int i=0;i<=3;i++)
    {
        for(int j=0;j<=2-i;j++)
            printf(" ");
        for(int k=0;k<=2*i;k++)
            printf("*");
            printf("\n");
        
    }
    for(int i=0;i<=2;i++)
    {
        for( int j=0;j<=i;j++)
            printf(" ");
        for(int  k=0;k<=4-2*i;k++)
            printf("*");
        printf("\n");
    }
}
 //函数调用
void hello_world(void ){
    printf("hello,world\n");
}
void three_hellos(void){
    int  counter = 3;
    for (int i =0; i<counter; i++) {
        hello_world();
    }
}
 // 求100之内的素数5 和demo1类似 还有别的写法
-(void)demo8{
    int k,leap = 0;
    for (int m =2; m <=100; m++) {
        k = sqrt(m);
        for (int i = 2; i<=k; i++) {
            if (m%i == 0) {
                leap = 0;
                break;
            }else{
                leap = 1;
            }
        };
        if (leap == 1) {
         printf("%d ",m);
        }
        leap = 0;
       
    }
}
 // 将一个字符串逆序输出。
-(void)demo9{
    char str[100] = "WOCAO";
    char ptr[100];
    Inverse(str, ptr);
    printf("%s",ptr);
}

void Inverse(char str[],char ptr[]){
    int n = (int)strlen(str);
    int i ;
    for (i = 0; i <n; i++) {
        ptr[i] = str[n-i-1];
    }
    
}
 // 将一个数组逆向输出 也可以进行倒序遍历
-(void)demo10{
    int a[] = {0,1,2,3,4,5,6,7,8,9};
    int t;
    int n = sizeof(a)/sizeof(int);
    for (int i = 0; i <n/2; i++) {
        t =a[i];
        a[i] = a[n-i-1];
        a[n-i-1] = t;
    }
    for (int i =0; i<n; i++) {
        printf("%d\n",a[i]);
    }
}
 //宏定义使用 虽然已经会了 可以夯实基础
#define exchange(a,b) { \
int t; \
t = a;\
a = b;\
b = t;\
}
#define  MAX_NUM(x,y) ((x>y) ? x:y)
#define  MIN_NUM(x,y) ((x>y) ? y:x)

void hong(void){
    int a = 10;
    int b = 20;
//    exchange(a,b);
//    printf("a==%d,b ==%d",a,b);
    int compare = MAX_NUM(a, b);
    printf("%d\n",compare);
    
    int x = 100;
    int y = 50;
    printf("%d",MIN_NUM(x, y));
}

 //求n的阶乘 n!
 float fac(int n){
//     float f ;
    if (n == 1 || n == 0) {
        return 1;
    }
        return fac(n-1) *n;
}

 // 99 乘法口诀
-(void)demo99{
    for (int i = 1; i <= 9; i++) {
        for (int j =1; j <=i; j++) {
            printf("%d * %d = %d  ",j,i,i*j);
        }
        printf("\n");
    }
    
}
 //杨辉三角
-(void) demo11{
    int i,j,a[10][10];
    
    for(i=0;i<10;i++)  a[i][0]=1;
    
    for(i=1;i<10;i++)  a[i][i]=1;
    
    for(i=2;i<10;i++)
        
        for(j=1;j<i;j++)
            
            a[i][j]=a[i-1][j-1]+a[i-1][j];
    
    for(i=0;i<10;i++)
        
    { for(j=0;j<=i;j++)
        
        printf("%4d",a[i][j]);
        
        printf(" ");
    }
}
   //按位取反 或许没什么意义的
-(void)demo12  {
    int a = 234;  //  1110 1010
    printf("%x",a);
    
////    printf("1--\40:%d",b);
//    a = ~a;
//    printf("%d",a);
//    int c = 0b11101010; //二进制
//    printf("c ==%d",c);
    
}
 //冒泡排序 时间和空间复杂度
-(void)demo13{
    int arr[] = {50,35,20,100,45};
    int len = sizeof(arr)/sizeof(int);
    for (int i =0; i <len-1; i++) {
        for (int j=0; j<len-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
    for (int i = 0; i <len; i++) {
        printf("%d\n",arr[i]);
    }
}
 //选择排序
-(void)demo14 {
    int arr[] = {300,80,60,40,200};
    int k = 0;
    int len = sizeof(arr)/sizeof(int);
    for (int i = 0; i <len-1 ; i++) {
        k = i;
        for (int j=i+1; j<len; j++) {
            if (arr[k] > arr[j]) {
                k = j;
            }
        }
        if (k != i) {
            int temp = arr[i];
            arr[i] = arr[k];
            arr[k] = temp;
        }
    }
    for (int i = 0; i < len; i++) {
        printf("%d\n",arr[i]);
    }
    
}

 //快速排序
void quick_sort(int *arr,int left, int right){
    if ( left >= right) {
        return;
    }
        int i = left;
        int j = right;
        int key  =arr[left];
        
        while (i < j) {
            while (i<j && arr[j]>=key) { //从右向左遍历
                 j--;
             }
            arr[i] = arr[j];
            
            while (i < j && arr[i] <=key) {
                    i++;
            }
            arr[j] = arr[i];
        }
    
    arr[i] = key;
    quick_sort(arr, left, i-1);
    quick_sort(arr, i+1, right);
    
    
    }
    


void quick_sort1(int s[],int l,int r)
{
    if(l < r)
    {
        int i=l,j=r,x=s[l];
        while(i<j)
        {
            while(i<j && s[j]>=x)//从右到左找到第一个小于x的数
                j--;
            if(i<j)
                s[i++]=s[j];
            
            while(i<j && s[i]<=x)//从左往右找到第一个大于x的数
                i++;
            if(i<j)
                s[j--]=s[i];
        }
        
        s[i]=x;//i = j的时候，将x填入中间位置
        quick_sort(s,l,i-1);//递归调用
        quick_sort(s,i+1,r);
    }
}

 /**
    数据结构 链表 二叉树
  */
-(void)demo16{
    
    
}
 //国际象棋
-(void)demo17 {
    for (int i =0; i <8; i++) {
        for (int j = 0; j < 8; j++) {
            if ((i+j) %2 == 0) {
                printf("%c%c",219,219);
            }else{
                printf(" ");
            }
              printf("\n");
        }
      
    }
}
struct  Node{
    int data;
    struct Node *pNext;
};
typedef struct  Node *ListNode;

 /// 创建一个链表
ListNode  createLink(){
    ListNode pHead = malloc(sizeof(ListNode)); //定义头链表节点
    pHead->pNext = NULL;
    
    ListNode pTemp = malloc(sizeof(ListNode));
    pTemp = pHead;
    
    int len = 15;
    for (int i =10; i < len; i++) {
        ListNode newNode = malloc(sizeof(ListNode));
//        int val = arc4random_uniform(100);//随机数
//        newNode->data = val;
        newNode->data = i;
        newNode->pNext = NULL;
        
        pTemp->pNext = newNode;
        pTemp = newNode;
    }
    insert(pHead, 2000);
    traverse(pHead);
//    delete_list(pHead, 2);
    printf("链表的长度为%d",list_num(pHead));
    return  pHead;
}

//链表遍历
void traverse(ListNode PHead){
    ListNode pNode  = PHead->pNext;
    while (pNode != NULL) {
        printf("%d\n",pNode->data);
        pNode = pNode->pNext;
    }
}
 //获取链表长度
int list_num(ListNode pHead){
    int num = 0;
    ListNode p = pHead->pNext;
    while (p != NULL) {
        num++;
        p = p->pNext;
    };
    return num;
}

 //插入链表节点
bool insert_list(ListNode pHead,int val,int index){
    ListNode p = pHead;
    int i = 0;
    while (p != NULL && i <index-1) { //index = 1时  p = pHead
        i++;
        p = p->pNext;
    }
    if ( p ==NULL || i > index-1) {
        printf("插入位置不合法");
        return false;
    }
    
    ListNode newNode = malloc(sizeof(ListNode));
    newNode->data = val;
    
     //记录插入位置节点
    ListNode temp = p->pNext;
    p->pNext = newNode;
    newNode->pNext = temp;
    
    return true;
}

 //删除链表
bool delete_list(ListNode pHead,int index ){
    ListNode p = pHead;
    int i = 0;
    while (p ->pNext!= NULL && i <index-1) { //index = 1时  p = pHead
        i++;
        p = p->pNext;
    }
    if ( p->pNext == NULL || i > index-1) {
        printf("删除位置不合法");
        return false;
    }
    ListNode temp = p->pNext; //记录节点
    p->pNext = temp->pNext;
    free(temp);
    return true;
    
}

 // 链表的插入
bool insertList(ListNode pHead, int val,int index){
    ListNode p = pHead;
    int  i = 0;
    while (p != NULL && i <index-1) {
        i++;
        p = p->pNext;
    }
    if (p == NULL || i > index) {
        printf("插入位置不合法\n");
        return false;
    }
    ListNode newNode = malloc(sizeof(ListNode));
    newNode->data = val;
    
    ListNode temp = p->pNext; //记录节点
    p->pNext = newNode;
    newNode->pNext = temp;
    return true;
}
void insert(ListNode pHead,int val){ //插入在尾节点
    if (pHead == NULL ) {
        return;
    }
    ListNode p = pHead;
    while (p->pNext != NULL) { //基本思路是获得得链表的尾节点
        p = p->pNext;
    }
    ListNode newNode = malloc(sizeof(ListNode));
    newNode->data = val;
    newNode->pNext = NULL;
    
    p->pNext = newNode;
    
}

 // 链表的反转 单循环链表 双链表
 //二叉树  深度为k的二叉树
 /**
    二叉树 示遍历方式  先序 中序遍历 后序遍历
  */

struct TreeNode {
    int data;
    struct TreeNode *leftNode;
    struct TreeNode *rightNode;
};
typedef struct  TreeNode TreeNode;

void createTree(TreeNode **T){
    int data;
    scanf("%d",&data);
    if (data == -1) {
        *T = NULL;
    }else{
        *T = malloc(sizeof(struct TreeNode));
        (*T)->data = 10;
        printf("左子树...");
        createTree(&((*T)->leftNode));
        printf("右子树");
        createTree(&((*T)->rightNode));
    }
    
}

 /**
    哈西算法 数据加密相关
  */
//unsigned long getHashIndex( const char *key, int nTableLength )
//{
//   unsigned long nHash = 0;
//
//     while (*key){
//       nHash = (nHash<<5) + nHash + *key++;
//     }
//     return ( nHash % nTableLength );
//
//}

 //加法哈希 位移哈希 乘法哈希 除法哈希
int addHash(char *str,int prime){
    int hash = 0;
    for (int i = 0; i <strlen(str); i++) {
        hash += str[i];
    }
    return hash % prime;
}

@end
