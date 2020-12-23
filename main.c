/*
 * main.c
 */
#include <stdio.h>
// #define width 352
// #define height 288

typedef unsigned char BYTE;
typedef unsigned short WORD;

const char iFileName[] = "data.yuv"; 
const char oFileName[] = "result.yuv"; 
//const int width = 352;
//const int height = 288;

WORD** initMat(int width, int height, FILE *piFile); 
// WORD** initMat(FILE *piFile);

int main(void) {
	FILE* piFile = fopen(iFileName, "rb");	//pointer input file
	FILE* poFile = fopen(oFileName, "wb");	//pointer output file

	WORD **H = initMat(352, 288, piFile);
	// H = initMat(352, 288, piFile);

	printf("h00 = %d\n", H[0][0]);
	printf("h01 = %d\n", H[0][1]);
	printf("h02 = %d\n", H[0][2]);
	printf("h03 = %d\n", H[0][3]);


	fclose(piFile);
    fclose(poFile);
	return 0;
}

// BYTE** initMat(int width, int height, FILE *piFile)
// WORD** initMat(FILE *piFile){
// 	WORD* MatResult[height];
// 	int i, j;
// 	for (i = 0; i < height; i++){
// 		WORD pLine[width];
// 		for (j = 0; j < width; j++){
// 			fread(&pLine[j], 1, 1, piFile);
// 			// printf("h = %d\n", pLine[j]);
// 		}	
// 		MatResult[i] = pLine;
// 	}
// 	return MatResult;
// }

WORD** initMat(int width,int height, FILE *piFile){
	width = width/2;
	WORD **MatResult = (WORD **)malloc(height);
	int i;
	for (i = 0; i < height; i++){
		MatResult[i] = (WORD *)malloc(width);	//MatResult[i]存的是指针
		fread(MatResult[i], sizeof(WORD), width, piFile);
	}
	return MatResult;
}
