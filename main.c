/*
 * main.c
 */
#include <stdio.h>

typedef signed char BYTE;
typedef signed short WORD;

const char iFileName[] = "data.yuv"; 
const char oFileName[] = "result.yuv"; 

BYTE** initMat(int width, int height, FILE *piFile); 
WORD** H_transform(int height, int width, BYTE** X);
WORD** H_dotp(BYTE** N);
WORD** H_dotp_inv(WORD** N);
void saveMat(int height, int width, WORD** Y, FILE *poFile);
void show_mat(int height, int width, WORD** Mat);

int main(void) {

	const int width = 352;
	const int height = 288;

	FILE* piFile = fopen(iFileName, "rb");	//pointer input file
	FILE* poFile = fopen(oFileName, "wb");	//pointer output file

	int i;
	for  (i = 0; i<height/4; i++){
	BYTE **X = initMat(4, width, piFile);
	WORD **Y = H_transform(4, width, X);
	saveMat(4, width, Y, poFile);
	}

	// BYTE **X = initMat(height, width, piFile);
	// BYTE **Y = H_transform(height, width, X);
	// saveMat(height, width, Y, poFile);
	
	fclose(piFile);
    fclose(poFile);
	return 0;
}

BYTE** initMat(int height,int width, FILE *piFile){
	// width = width/2;
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
	BYTE* X0 = (BYTE *)calloc(4,sizeof(BYTE));
	BYTE* X1 = (BYTE *)calloc(4,sizeof(BYTE));
	BYTE* X2 = (BYTE *)calloc(4,sizeof(BYTE));
	BYTE* X3 = (BYTE *)calloc(4,sizeof(BYTE));
	BYTE** Xpart = (BYTE **)calloc(4,sizeof(BYTE*));
	Xpart[0] = X0;
	Xpart[1] = X1;
	Xpart[2] = X2;
	Xpart[3] = X3;

	WORD** Ypart;
	WORD **Y = (WORD **)calloc(height,sizeof(WORD*));
	for (y=0;y<height;y++){
		Y[y] = (WORD *)calloc(width,sizeof(WORD));
	}

	int true_x, true_y;
	for (y=0; y<ymax; y++){
		for (x=0; x<xmax; x++){
			true_x = 4*x;
			true_y = 4*y;
			Xpart[0][0] = X[true_y][true_x];
			Xpart[0][1] = X[true_y][true_x+1];
			Xpart[0][2] = X[true_y][true_x+2];
			Xpart[0][3] = X[true_y][true_x+3];

			Xpart[1][0] = X[true_y+1][true_x];
			Xpart[1][1] = X[true_y+1][true_x+1];
			Xpart[1][2] = X[true_y+1][true_x+2];
			Xpart[1][3] = X[true_y+1][true_x+3];

			Xpart[2][0] = X[true_y+2][true_x];
			Xpart[2][1] = X[true_y+2][true_x+1];
			Xpart[2][2] = X[true_y+2][true_x+2];
			Xpart[2][3] = X[true_y+2][true_x+3];

			Xpart[3][0] = X[true_y+3][true_x];
			Xpart[3][1] = X[true_y+3][true_x+1];
			Xpart[3][2] = X[true_y+3][true_x+2];
			Xpart[3][3] = X[true_y+3][true_x+3];
			
			Ypart = H_dotp_inv(H_dotp(Xpart));
			// show_mat(4, 4, Ypart);

			Y[true_y][true_x] = Ypart[0][0];
			Y[true_y][true_x+1] = Ypart[0][1];
			Y[true_y][true_x+2] = Ypart[0][2];
			Y[true_y][true_x+3] = Ypart[0][3];

			Y[true_y+1][true_x] = Ypart[1][0];
			Y[true_y+1][true_x+1] = Ypart[1][1];
			Y[true_y+1][true_x+2] = Ypart[1][2];
			Y[true_y+1][true_x+3] = Ypart[1][3];

			Y[true_y+2][true_x] = Ypart[2][0];
			Y[true_y+2][true_x+1] = Ypart[2][1];
			Y[true_y+2][true_x+2] = Ypart[2][2];
			Y[true_y+2][true_x+3] = Ypart[2][3];

			Y[true_y+3][true_x] = Ypart[3][0];
			Y[true_y+3][true_x+1] = Ypart[3][1];
			Y[true_y+3][true_x+2] = Ypart[3][2];
			Y[true_y+3][true_x+3] = Ypart[3][3];
		}
	}
	return Y;
}

WORD** H_dotp(BYTE** N){
	WORD* Y0 = (WORD *)calloc(4,sizeof(WORD));
	WORD* Y1 = (WORD *)calloc(4,sizeof(WORD));
	WORD* Y2 = (WORD *)calloc(4,sizeof(WORD));
	WORD* Y3 = (WORD *)calloc(4,sizeof(WORD));
	WORD** Y = (WORD **)calloc(4,sizeof(WORD*));
	Y[0] = Y0;
	Y[1] = Y1;
	Y[2] = Y2;
	Y[3] = Y3;

	Y[0][0] = N[0][0] + N[1][0] + N[2][0] + N[3][0];
	Y[0][1] = N[0][1] + N[1][1] + N[2][1] + N[3][1];
	Y[0][2] = N[0][2] + N[1][2] + N[2][2] + N[3][2];
	Y[0][3] = N[0][3] + N[1][3] + N[2][3] + N[3][3];

	Y[1][0] = 2*N[0][0] + N[1][0] - N[2][0] - 2*N[3][0];
	Y[1][1] = 2*N[0][1] + N[1][1] - N[2][1] - 2*N[3][1];
	Y[1][2] = 2*N[0][2] + N[1][2] - N[2][2] - 2*N[3][2];
	Y[1][3] = 2*N[0][3] + N[1][3] - N[2][3] - 2*N[3][3];

	Y[2][0] = N[0][0] - N[1][0] - N[2][0] + N[3][0];
	Y[2][1] = N[0][1] - N[1][1] - N[2][1] + N[3][1];
	Y[2][2] = N[0][2] - N[1][2] - N[2][2] + N[3][2];
	Y[2][3] = N[0][3] - N[1][3] - N[2][3] + N[3][3];

	Y[3][0] = N[0][0] - 2*N[1][0] + 2*N[2][0] - N[3][0];
	Y[3][1] = N[0][1] - 2*N[1][1] + 2*N[2][1] - N[3][1];
	Y[3][2] = N[0][2] - 2*N[1][2] + 2*N[2][2] - N[3][2];
	Y[3][3] = N[0][3] - 2*N[1][3] + 2*N[2][3] - N[3][3];
	return Y;
}

WORD** H_dotp_inv(WORD** N){
	WORD* Y0 = (WORD *)calloc(4,sizeof(WORD));
	WORD* Y1 = (WORD *)calloc(4,sizeof(WORD));
	WORD* Y2 = (WORD *)calloc(4,sizeof(WORD));
	WORD* Y3 = (WORD *)calloc(4,sizeof(WORD));
	WORD** Y = (WORD **)calloc(4,sizeof(WORD*));
	Y[0] = Y0;
	Y[1] = Y1;
	Y[2] = Y2;
	Y[3] = Y3;

	Y[0][0] = N[0][0] + N[0][1] + N[0][2] + N[0][3];
	Y[1][0] = N[1][0] + N[1][1] + N[1][2] + N[1][3];
	Y[2][0] = N[2][0] + N[2][1] + N[2][2] + N[2][3];
	Y[3][0] = N[3][0] + N[3][1] + N[3][2] + N[3][3];

	Y[0][1] = 2*N[0][0] + N[0][1] - N[0][2] - 2*N[0][3];
	Y[1][1] = 2*N[1][0] + N[1][1] - N[1][2] - 2*N[1][3];
	Y[2][1] = 2*N[2][0] + N[2][1] - N[2][2] - 2*N[2][3];
	Y[3][1] = 2*N[3][0] + N[3][1] - N[3][2] - 2*N[3][3];

	Y[0][2] = N[0][0] - N[0][1] - N[0][2] + N[0][3];
	Y[1][2] = N[1][0] - N[1][1] - N[1][2] + N[1][3];
	Y[2][2] = N[2][0] - N[2][1] - N[2][2] + N[2][3];
	Y[3][2] = N[3][0] - N[3][1] - N[3][2] + N[3][3];

	Y[0][3] = N[0][0] - 2*N[0][1] + 2*N[0][2] - N[0][3];
	Y[1][3] = N[1][0] - 2*N[1][1] + 2*N[1][2] - N[1][3];
	Y[2][3] = N[2][0] - 2*N[2][1] + 2*N[2][2] - N[2][3];
	Y[3][3] = N[3][0] - 2*N[3][1] + 2*N[3][2] - N[3][3];
	return Y;
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
