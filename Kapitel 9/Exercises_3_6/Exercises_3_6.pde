//9.3
int [] ages = new int [30];
float [] pointNumber = new float[100];
Zoog [] zoogObject = new Zoog [56];

///////////////////////////////////////////////////////////////

//9.4
int[] numbers = new int[10];  // Valid

float[] numbers = new float[5 + 6]; //Valid

int num = 5;
float[] numbers = new int[num]; //Valid ? laver en array med 5

float num = 5.2;
Car[] cars = new Car[num]; //kan ikke lave mindre end hele tal?

int num = (5 * 6)/2;
float[] numbers = new float[num = 5];//Virker underlig, sætter num til 5

int num = 5;
Zoog[] zoogs = new Zoog[num * 10];//Valid

////////////////////////////////////////////////////////////////

//9.6
int [] nums ={5,4,2,7,6,8,5,2,8,14};
for (int i = 0; i <nums.length;i++){
  nums[i] = nums*10;
}

//////////////////////////////////////////////////////////////////
