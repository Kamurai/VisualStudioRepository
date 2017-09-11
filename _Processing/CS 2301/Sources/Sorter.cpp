
//libraries
	#include<iostream>

	using namespace::std;

//main
	int main()
	{
	//variables
		int c = 0, x = 3, y = 3, z = 3, w = x + y + z, p = 0, Hold = 0;
	//arrays
		int One[4] = {3, 1, 4, 2}, Two[4] = {3, 2, 3, 1}, Three[4] = {3, 4, 2, 3}, Four[10] = {9, 0, 0, 0, 0, 0, 0, 0, 0, 0};

	
	//output arrays
		cout << One[1] << One[2] << One[3] << "\n\n";
		cout << Two[1] << Two[2] << Two[3] << "\n\n";
		cout << Three[1] << Three[2] << Three[3] << "\n\n";
		cout << Four[1] << Four[2] << Four[3] << Four[4] << Four[5] << Four[6] << Four[7] << Four[8] << Four[9] << "\n\n";
	//start counting through
			for(c = 1; c <= x; c++)
			{
				Four[c] = One[c];
			}
	
			for(c = 1; c <= y; c++)
			{
				Four[c + x] = Two[c];
			}
			for(c = 1; c <= z; c++)
			{
				Four[c + x + y] = Three[c];
			}
		//output array
			cout << Four[1] << Four[2] << Four[3] << Four[4] << Four[5] << Four[6] << Four[7] << Four[8] << Four[9] << "\n\n";

		for(c = 1; c <= w; c++)
		{
			if(Four[c + 1] < Four[c] && c != 9)
			{
				Hold = Four[c];
				Four[c] = Four[c + 1];
				Four[c + 1] = Hold;
				c = 1;
			}
		}
	//output array
		cout << Four[1] << Four[2] << Four[3] << Four[4] << Four[5] << Four[6] << Four[7] << Four[8] << Four[9] << "\n\n";
	
	//weed out duplicates
		for(c = 1; c <= w; c++)
		{
			if(Four[c] == Four [c + 1])
			{
				Four[c] = 0;
			}
		}
		//output array
			cout << Four[1] << Four[2] << Four[3] << Four[4] << Four[5] << Four[6] << Four[7] << Four[8] << Four[9] << "\n\n";

		for(c = 1; c <= w; c++)
		{
			if(Four[c] == 0 && Four[c + 1] != 0)
			{
				Hold = Four[c];
				Four[c] = Four[c + 1];
				Four[c + 1] = Hold;
				c = 1;
			}
			else if(Four[c] == 0)
			{
				for(p = c; p <= w; p++)
				{
					if(Four[p] != 0)
					{
						Hold = Four[c];
						Four[c] = Four[p];
						Four[p] = 0;
						p = w;
					}
				}
			}
		}
		//output array
			cout << Four[1] << Four[2] << Four[3] << Four[4] << Four[5] << Four[6] << Four[7] << Four[8] << Four[9] << "\n\n";


		//output array
		for(c = 1; c <= w; c++)
		{
			if(Four[c] != 0)
			{
			cout << Four[c];
			}
		}
		cout << "\n\n";


		return 0;
	}