{
* Copyright (c) 2022 XXIV
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
}
unit spinner;

interface

uses spinner.raw;

type
   TSpinners = spinner_spinners_t;
   TSpinner = record
		 spinner	: spinner_t;
	      end;	


function TSpinnerNew(spinner : TSpinners; message:Pchar):TSpinner;

function TSpinnerNewWithTimer(spinner: TSpinners; message:Pchar):TSpinner;

procedure TSpinnerStop(var spinner: TSpinner);

procedure TSpinnerStopWithSymbol(var spinner : TSpinner; symbol: Pchar);
   
procedure TSpinnerStopWithNewLine(var spinner: TSpinner);

procedure TSpinnerStopWithMessage(var spinner : TSpinner;msg: Pchar);

procedure TSpinnerStopAndPersist(var spinner : TSpinner; symbol : Pchar; msg: Pchar);

procedure TSpinnerClean(var spinner : TSpinner);


implementation

   function TSpinnerNew(spinner: TSpinners; message:Pchar):TSpinner;
   var
      spin  : TSpinner;
   begin
      spin.spinner := spinner_new(spinner, message);
      TSpinnerNew := spin;
   end;

   function TSpinnerNewWithTimer(spinner: TSpinners; message:Pchar):TSpinner;
   var
      spin  : TSpinner;
   begin
      spin.spinner := spinner_new_with_timer(spinner, message);
      TSpinnerNewWithTimer := spin;
   end;

   procedure TSpinnerStop(var spinner: TSpinner);
   begin
      spinner_stop(@spinner.spinner);
   end;

   procedure TSpinnerStopWithSymbol(var spinner : TSpinner; symbol: Pchar);
   begin
      spinner_stop_with_symbol(@spinner.spinner, symbol);
   end;

   procedure TSpinnerStopWithNewLine(var spinner: TSpinner);
   begin
      spinner_stop_with_newline(@spinner.spinner);
   end;

   procedure TSpinnerStopWithMessage(var spinner : TSpinner;msg: Pchar);
   begin
      spinner_stop_with_message(@spinner.spinner, msg);
   end;

   procedure TSpinnerStopAndPersist(var spinner : TSpinner; symbol : Pchar; msg: Pchar);
   begin
      spinner_stop_and_persist(@spinner.spinner, symbol, msg);
   end;

   procedure TSpinnerClean(var spinner : TSpinner);
   begin
      spinner_clean(@spinner.spinner);
   end;

end.
