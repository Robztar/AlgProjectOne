//---------------------------------------------------------------------------

#include <vcl.h>
#include <iostream>
#include <vector>
#include <cstdlib>
#include <algorithm>
#pragma hdrstop

using namespace std;

#include "setCalculator.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;

vector<int> setS;
int sizeOfSet;
int intX = 0;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
	: TForm(Owner)
{

}
//-----------------------Generate-The-Set-----------------------------------------------
void __fastcall TForm2::genSetClick(TObject *Sender)
{
	sizeOfSet =  setSize->Text.ToInt();
	setS.clear();
	int num;
	displaySet->Caption = "--> ";
	for(int s=0;s<sizeOfSet;s++)  {
		num = rand() % (sizeOfSet + 1);
		vector<int>::iterator iter;
		iter = find (setS.begin(), setS.end(), num);

		while (iter != setS.end()){
			num = rand() % (sizeOfSet + 1);
			iter = find (setS.begin(), setS.end(), num);
		}

		setS.push_back(num);
		displaySet->Caption += IntToStr(num)+", ";
	}
}
//--------------------------Set-Integer-x----------------------------------------------
void __fastcall TForm2::setXClick(TObject *Sender)
{
	intX =  enterX->Text.ToInt();
	displayX->Caption = "--> x = "+enterX->Text;
}
//--------------------------Brute-Force-Algorithm--------------------------------------
void __fastcall TForm2::bruteAlgClick(TObject *Sender)
{
	int match = 0;
	setPairs1->Caption = "";

	for(int x = 0; x< sizeOfSet;x++){
		int first = setS[x];
		for(int y = x; y < sizeOfSet;y++){
			int second = setS[y];
			int checkSum = first + second;
			if(x != y && checkSum == intX){
				match += 1;
				setPairs1->Caption += IntToStr(first)+","+IntToStr(second)+"\n";
			}
		}
	}
	if (match==0) {
		setPairs1->Caption = "No matches were found";
	}
}
//-------------------------Optimal-Force-Algorithm-------------------------------------
void __fastcall TForm2::optimAlgClick(TObject *Sender)
{
	setPairs2->Caption = "";
	int match = 0;
	vector<int> rangeArr;
	vector<int> newArr;

	rangeArr.clear();
	newArr.clear();

	//Count Sort Implementation
	for(int i = 0; i <= sizeOfSet; i++){
		rangeArr.push_back(0);
	}
	for(int j = 0; j < sizeOfSet; j++){
		rangeArr[setS[j]]+=1;
		newArr.push_back(0);
	}
	for(int i = 1; i <= sizeOfSet; i++){
		rangeArr[i] += rangeArr[i-1];
	}
	for(int j = 0; j < sizeOfSet; j++){
		int ins = rangeArr[setS[j]];
		newArr[ins-1] = setS[j];
		rangeArr[setS[j]]--;
	}

	//binary search implementation
    for(int a = 0; a < sizeOfSet; a++){
		int left=a+1, right = sizeOfSet-1;
		int add = intX - newArr[a];
		while (left <= right){
			int mid = (right+left)/2;
			if(add == newArr[mid]){
				match += 1;
				setPairs2->Caption += IntToStr(newArr[a])+","+IntToStr(newArr[mid])+"\n";
				break;
			}
			if(add < newArr[mid]){
				right = mid-1;
			}
			if(add > newArr[mid]){
				left = mid+1;
			}
		}

	}
    if (match==0) {
		setPairs2->Caption = "No matches were found";
	}
}
//---------------------------------------------------------------------------

