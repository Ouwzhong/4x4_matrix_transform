/*
 * main.c
 */
#include <stdio.h>

typedef unsigned char BYTE;
typedef unsigned short WORD;

const char iFileName[] = "data.yuv"; 
const char oFileName[] = "result.yuv"; 
const int width = 352;
const int height = 288;

BYTE** initMat(int width, int height, FILE *piFile); 
BYTE** H_transform(BYTE** X);
BYTE** H_dotp(BYTE** N);
BYTE** H_dotp_inv(BYTE** N);
void saveMat(int height, int width, BYTE** Y, FILE *poFile);

int main(void) {

	FILE* piFile = fopen(iFileName, "rb");	//pointer input file
	FILE* poFile = fopen(oFileName, "wb");	//pointer output file

	BYTE **X = initMat(height, width, piFile);
	// BYTE temp = H[0][0];
	// printf("h00 = %d\n", H[287][351]);
	// printf("h01 = %d\n", H[0][1]);
	// printf("h02 = %d\n", H[0][2]);
	// printf("h03 = %d\n", H[0][3]);

	BYTE **Y = H_transform(X);

	saveMat(height, width, Y, poFile);

	fclose(piFile);
    fclose(poFile);
	return 0;
}

// WORD** initMat(int height,int width, FILE *piFile){
// 	// width = width/2;
// 	WORD **MatResult = (WORD **)calloc(height,sizeof(WORD*));
// 	int i;
// 	for (i = 0; i < height; i++){
// 		WORD *new_addr = (WORD *)calloc(width,sizeof(WORD));	
// 		if (new_addr){
// 		MatResult[i] = new_addr;
// 		fread(new_addr, sizeof(WORD), width, piFile);
// 		}
// 		else{
// 			printf("Out of memory!");
// 		}
// 	}
// 	return MatResult;
// }

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

void saveMat(int height, int width, BYTE** Y, FILE *poFile){
	int i;
	for (i = 0; i < height; i++){
		fwrite(Y[i], sizeof(BYTE), width, poFile);
	}
	return;
}

BYTE** H_transform(BYTE** X){
	int y, ymax = height / 4;
	int x, xmax = width / 4;
	//BYTE H[4][4] = {{1,1,1,1},{2,1,-1,-2},{1,-1,-1,1},{1,-2,2,-1}};
	//BYTE H_inv[4][4]; 
	BYTE X0[4],X1[4],X2[4],X3[4];
	BYTE** Xpart = (BYTE **)calloc(4,sizeof(BYTE*));
	X[0] = X0;
	X[1] = X1;
	X[2] = X2;
	X[3] = X3;
	BYTE** Ypart;
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

			X[true_y][true_x] = Ypart[0][0];
			X[true_y][true_x+1] = Ypart[0][1];
			X[true_y][true_x+2] = Ypart[0][2];
			X[true_y][true_x+3] = Ypart[0][3];

			X[true_y+1][true_x] = Ypart[1][0];
			X[true_y+1][true_x+1] = Ypart[1][1];
			X[true_y+1][true_x+2] = Ypart[1][2];
			X[true_y+1][true_x+3] = Ypart[1][3];

			X[true_y+2][true_x] = Ypart[2][0];
			X[true_y+2][true_x+1] = Ypart[2][1];
			X[true_y+2][true_x+2] = Ypart[2][2];
			X[true_y+2][true_x+3] = Ypart[2][3];

			X[true_y+3][true_x] = Ypart[3][0];
			X[true_y+3][true_x+1] = Ypart[3][1];
			X[true_y+3][true_x+2] = Ypart[3][2];
			X[true_y+3][true_x+3] = Ypart[3][3];
		}
	}
	return X;
}

// BYTE** H_dotp(BYTE** M, BYTE** N){
// 	BYTE Y0[4],Y1[4],Y2[4],Y3[4];
// 	BYTE** Y;
// 	Y[0] = Y0;
// 	Y[1] = Y1;
// 	Y[2] = Y2;
// 	Y[3] = Y3;

// 	Y[0][0] = M[0][0]*N[0][0] + M[0][1]*N[1][0] + M[0][2]*N[2][0] + M[0][3]*N[3][0];
// 	Y[0][1] = M[0][0]*N[0][1] + M[0][1]*N[1][1] + M[0][2]*N[2][1] + M[0][3]*N[3][1];
// 	Y[0][2] = M[0][0]*N[0][2] + M[0][1]*N[1][2] + M[0][2]*N[2][2] + M[0][3]*N[3][2];
// 	Y[0][3] = M[0][0]*N[0][3] + M[0][1]*N[1][3] + M[0][2]*N[2][3] + M[0][3]*N[3][3];

// 	Y[1][0] = M[1][0]*N[0][0] + M[1][1]*N[1][0] + M[1][2]*N[2][0] + M[1][3]*N[3][0];
// 	Y[1][1] = M[1][0]*N[0][1] + M[1][1]*N[1][1] + M[1][2]*N[2][1] + M[1][3]*N[3][1];
// 	Y[1][2] = M[1][0]*N[0][2] + M[1][1]*N[1][2] + M[1][2]*N[2][2] + M[1][3]*N[3][2];
// 	Y[1][3] = M[1][0]*N[0][3] + M[1][1]*N[1][3] + M[1][2]*N[2][3] + M[1][3]*N[3][3];

// 	Y[2][0] = M[2][0]*N[0][0] + M[2][1]*N[1][0] + M[2][2]*N[2][0] + M[2][3]*N[3][0];
// 	Y[2][1] = M[2][0]*N[0][1] + M[2][1]*N[1][1] + M[2][2]*N[2][1] + M[2][3]*N[3][1];
// 	Y[2][2] = M[2][0]*N[0][2] + M[2][1]*N[1][2] + M[2][2]*N[2][2] + M[2][3]*N[3][2];
// 	Y[2][3] = M[2][0]*N[0][3] + M[2][1]*N[1][3] + M[2][2]*N[2][3] + M[2][3]*N[3][3];

// 	Y[3][0] = M[3][0]*N[0][0] + M[3][1]*N[1][0] + M[3][2]*N[2][0] + M[3][3]*N[3][0];
// 	Y[3][1] = M[3][0]*N[0][1] + M[3][1]*N[1][1] + M[3][2]*N[2][1] + M[3][3]*N[3][1];
// 	Y[3][2] = M[3][0]*N[0][2] + M[3][1]*N[1][2] + M[3][2]*N[2][2] + M[3][3]*N[3][2];
// 	Y[3][3] = M[3][0]*N[0][3] + M[3][1]*N[1][3] + M[3][2]*N[2][3] + M[3][3]*N[3][3];
// 	return Y;
// }

BYTE** H_dotp(BYTE** N){
	BYTE Y0[4],Y1[4],Y2[4],Y3[4];
	BYTE** Y = (BYTE **)calloc(4,sizeof(BYTE*));
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

	Y[3][0] = N[0][0] - 2*N[1][0] + 2*N[2][0] + N[3][0];
	Y[3][1] = N[0][1] - 2*N[1][1] + 2*N[2][1] + N[3][1];
	Y[3][2] = N[0][2] - 2*N[1][2] + 2*N[2][2] + N[3][2];
	Y[3][3] = N[0][3] - 2*N[1][3] + 2*N[2][3] + N[3][3];


	return Y;
}

BYTE** H_dotp_inv(BYTE** N){
	BYTE Y0[4],Y1[4],Y2[4],Y3[4];
	BYTE** Y = (BYTE **)calloc(4,sizeof(BYTE*));;
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

	Y[0][3] = N[0][0] - 2*N[0][1] + 2*N[0][2] + N[0][3];
	Y[1][3] = N[1][0] - 2*N[1][1] + 2*N[1][2] + N[1][3];
	Y[2][3] = N[2][0] - 2*N[2][1] + 2*N[2][2] + N[2][3];
	Y[3][3] = N[3][0] - 2*N[3][1] + 2*N[3][2] + N[3][3];
	return Y;
}