//---------------------------------------------------------------------------

#ifndef setCalculatorH
#define setCalculatorH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TLabel *Label1;
	TScrollBox *ScrollBox1;
	TLabel *Label8;
	TLabel *setPairs1;
	TLabel *setPairs2;
	TScrollBox *ScrollBox2;
	TLabel *displaySet;
	TPanel *Panel1;
	TLabel *Label2;
	TEdit *setSize;
	TButton *genSet;
	TPanel *Panel2;
	TLabel *Label9;
	TLabel *displayX;
	TEdit *enterX;
	TButton *setX;
	TLabel *Label3;
	TPanel *Panel3;
	TPanel *Panel4;
	TButton *bruteAlg;
	TPanel *Panel5;
	TButton *optimAlg;
	void __fastcall genSetClick(TObject *Sender);
	void __fastcall setXClick(TObject *Sender);
	void __fastcall bruteAlgClick(TObject *Sender);
	void __fastcall optimAlgClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
