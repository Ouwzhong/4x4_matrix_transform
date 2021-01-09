/*
 * main.c
 */
#include <stdio.h>
#include <time.h>
typedef signed char BYTE;
typedef signed short WORD;

const char iFileName[] = "data.yuv"; 
const char oFileName[] = "result.yuv"; 

extern cregister volatile unsigned int TSCL;
extern cregister volatile unsigned int TSCH;

BYTE** initMat(int width, int height, FILE *piFile); 
WORD** H_transform(int height, int width, BYTE** X);
void saveMat(int height, int width, WORD** Y, FILE *poFile);
void show_mat(int height, int width, WORD** Mat);

clock_t clock();

int main(void) {
	
	const int width = 352;
	const int height = 288;

	FILE* piFile = fopen(iFileName, "rb");	//pointer input file
	FILE* poFile = fopen(oFileName, "wb");	//pointer output file

	// int i;
	// for  (i = 0; i<height/4; i++){
	// BYTE **X = initMat(4, width, piFile);
	// WORD **Y = H_transform(4, width, X);
	// saveMat(4, width, Y, poFile);
	// }
	
	TSCL = 1;
	BYTE **X = initMat(height, width, piFile);
	clock_t start_t = clock();		//start counting CPU cycles
	WORD **Y = H_transform(height, width, X);
	clock_t end_t = clock();		//stop to count CPU cycles
	saveMat(height, width, Y, poFile);

	printf("Transform took %d cycles.",end_t - start_t);
	
	fclose(piFile);
    fclose(poFile);
	return 0;
}

BYTE** initMat(int height,int width, FILE *piFile){
	BYTE **MatResult = (BYTE **)calloc(height,sizeof(BYTE*));
	int i;
	for (i = 0; i < height; i++){
		BYTE *new_addr = (BYTE *)calloc(width,sizeof(BYTE));	
		if (new_addr){
		MatResult[i] = new_addr;
		fread(new_addr, sizeof(BYTE), width, piFile);
		}
		else{
			printf("Out of memory!");
		}
	}
	return MatResult;
}

void saveMat(int height, int width, WORD** Y, FILE *poFile){
	int i;
	for (i = 0; i < height; i++){
		fwrite(Y[i], sizeof(WORD), width, poFile);
	}
}

WORD** H_transform(int height, int width, BYTE** X){
	int y, ymax = height / 4;
	int x, xmax = width / 4;

	WORD **Y = (WORD **)calloc(height,sizeof(WORD*));
	for (y=0;y<height;y++){
		Y[y] = (WORD *)calloc(width,sizeof(WORD));
	}
	WORD a00,a01,a02,a03,a10,a11,a12,a13,a20,a21,a22,a23,a30,a31,a32,a33;	//temp result

	int true_x, true_y;
	for (y=0; y<ymax; y++){
		for (x=0; x<xmax; x++){
			true_x = 4*x;
			true_y = 4*y;
			
			// A = H*X
			a00 = *(*(X+true_y)+true_x) + *(*(X+true_y+1)+true_x) + *(*(X+true_y+2)+true_x) + *(*(X+true_y+3)+true_x);
			a01 = *(*(X+true_y)+true_x+1) + *(*(X+true_y+1)+true_x+1) + *(*(X+true_y+2)+true_x+1) + *(*(X+true_y+3)+true_x+1);
			a02 = *(*(X+true_y)+true_x+2) + *(*(X+true_y+1)+true_x+2) + *(*(X+true_y+2)+true_x+2) + *(*(X+true_y+3)+true_x+2);
			a03 = *(*(X+true_y)+true_x+3) + *(*(X+true_y+1)+true_x+3) + *(*(X+true_y+2)+true_x+3) + *(*(X+true_y+3)+true_x+3);

			a10 = 2**(*(X+true_y)+true_x) + *(*(X+true_y+1)+true_x) - *(*(X+true_y+2)+true_x) - 2**(*(X+true_y+3)+true_x);
			a11 = 2**(*(X+true_y)+true_x+1) + *(*(X+true_y+1)+true_x+1) - *(*(X+true_y+2)+true_x+1) - 2**(*(X+true_y+3)+true_x+1);
			a12 = 2**(*(X+true_y)+true_x+2) + *(*(X+true_y+1)+true_x+2) - *(*(X+true_y+2)+true_x+2) - 2**(*(X+true_y+3)+true_x+2);
			a13 = 2**(*(X+true_y)+true_x+3) + *(*(X+true_y+1)+true_x+3) - *(*(X+true_y+2)+true_x+3) - 2**(*(X+true_y+3)+true_x+3);

			a20 = *(*(X+true_y)+true_x) - *(*(X+true_y+1)+true_x) - *(*(X+true_y+2)+true_x) + *(*(X+true_y+3)+true_x);
			a21 = *(*(X+true_y)+true_x+1) - *(*(X+true_y+1)+true_x+1) - *(*(X+true_y+2)+true_x+1) + *(*(X+true_y+3)+true_x+1);
			a22 = *(*(X+true_y)+true_x+2) - *(*(X+true_y+1)+true_x+2) - *(*(X+true_y+2)+true_x+2) + *(*(X+true_y+3)+true_x+2);
			a23 = *(*(X+true_y)+true_x+3) - *(*(X+true_y+1)+true_x+3) - *(*(X+true_y+2)+true_x+3) + *(*(X+true_y+3)+true_x+3);

			a30 = *(*(X+true_y)+true_x) - 2**(*(X+true_y+1)+true_x) + 2**(*(X+true_y+2)+true_x) - *(*(X+true_y+3)+true_x);
			a31 = *(*(X+true_y)+true_x+1) - 2**(*(X+true_y+1)+true_x+1) + 2**(*(X+true_y+2)+true_x+1) - *(*(X+true_y+3)+true_x+1);
			a32 = *(*(X+true_y)+true_x+2) - 2**(*(X+true_y+1)+true_x+2) + 2**(*(X+true_y+2)+true_x+2) - *(*(X+true_y+3)+true_x+2);
			a33 = *(*(X+true_y)+true_x+3) - 2**(*(X+true_y+1)+true_x+3) + 2**(*(X+true_y+2)+true_x+3) - *(*(X+true_y+3)+true_x+3);


			// Y = A*H^T
			*(*(Y+true_y)+true_x) = a00 + a01 + a02 + a03;
			*(*(Y+true_y+1)+true_x) = a10 + a11 + a12 + a13;
			*(*(Y+true_y+2)+true_x)= a20 + a21 + a22 + a23;
			*(*(Y+true_y+3)+true_x) = a30 + a31 + a32 + a33;

			*(*(Y+true_y)+true_x+1) = 2*a00 + a01 - a02 - 2*a03;
			*(*(Y+true_y+1)+true_x+1) = 2*a10 + a11 - a12 - 2*a13;
			*(*(Y+true_y+2)+true_x+1) = 2*a20 + a21 - a22 - 2*a23;
			*(*(Y+true_y+3)+true_x+1) = 2*a30 + a31 - a32 - 2*a33;

			*(*(Y+true_y)+true_x+2) = a00 - a01 - a02 + a03;
			*(*(Y+true_y+1)+true_x+2) = a10 - a11 - a12 + a13;
			*(*(Y+true_y+2)+true_x+2) = a20 - a21 - a22 + a23;
			*(*(Y+true_y+3)+true_x+2) = a30 - a31 - a32 + a33;

			*(*(Y+true_y)+true_x+3) = a00 - 2*a01 + 2*a02 - a03;
			*(*(Y+true_y+1)+true_x+3) = a10 - 2*a11 + 2*a12 - a13;
			*(*(Y+true_y+2)+true_x+3) = a20 - 2*a21 + 2*a22 - a23;
			*(*(Y+true_y+3)+true_x+3) = a30 - 2*a31 + 2*a32 - a33;
			
		}
	}
	return Y;
}

clock_t clock(){
    unsigned int low = TSCL;
    unsigned int high = TSCH;
    if (high) return (clock_t) -1;
    return low;
}

void show_mat(int height, int width, WORD** Mat){
	int i,j;
	for(i=0;i<height;i++){
		for(j=0;j<width;j++){
			printf("%d\t", Mat[i][j]);
		}
		printf("\n");
	}
}
