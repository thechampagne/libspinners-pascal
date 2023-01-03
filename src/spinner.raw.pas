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
unit spinner.raw;

{$ifdef fpc}
{$packrecords c}
{$endif}

interface

type
   Pspinner_t = ^spinner_t;
   spinner_t  = record
		   spinner : pointer;
		end;	   
   spinner_spinners_t =(DOTS,
			DOTS2,
			DOTS3,
			DOTS4,
			DOTS5,
			DOTS6,
			DOTS7,
			DOTS8,
			DOTS9,
			DOTS10,
			DOTS11,
			DOTS12,
			DOTS8BIT,
			LINE,
			LINE2,
			PIPE,
			SIMPLEDOTS,
			SIMPLEDOTSSCROLLING,
			STAR,
			STAR2,
			FLIP,
			HAMBURGER,
			GROWVERTICAL,
			GROWHORIZONTAL,
			BALLOON,BALLOON2,
			NOISE,
			BOUNCE,
			BOXBOUNCE,
			BOXBOUNCE2,
			TRIANGLE,
			ARC,
			CIRCLE,
			SQUARECORNERS,
			CIRCLEQUARTERS,
			CIRCLEHALVES,
			SQUISH,
			TOGGLE,
			TOGGLE2,
			TOGGLE3,
			TOGGLE4,
			TOGGLE5,
			TOGGLE6,
			TOGGLE7,
			TOGGLE8,
			TOGGLE9,
			TOGGLE10,
			TOGGLE11,
			TOGGLE12,
			TOGGLE13,
			ARROW,
			ARROW2,
			ARROW3,
			BOUNCINGBAR,
			BOUNCINGBALL,
			SMILEY,
			MONKEY,
			HEARTS,
			CLOCK,
			EARTH,
			MATERIAL,
			MOON,
			RUNNER,
			PONG,
			SHARK,
			DQPB,
			WEATHER,
			CHRISTMAS,
			GRENADE,
			POINT,
			LAYER,
			BETAWAVE,
			FINGERDANCE,
			FISTBUMP,
			SOCCERHEADER,
			MINDBLOWN,
			SPEAKER,
			ORANGEPULSE,
			BLUEPULSE,
			ORANGEBLUEPULSE,
			TIMETRAVEL,
			AESTHETIC
			);


function spinner_new(spinner:spinner_spinners_t; message:Pchar):spinner_t;cdecl;external;

function spinner_new_with_timer(spinner:spinner_spinners_t; message:Pchar):spinner_t;cdecl;external;

procedure spinner_stop(spinner:Pspinner_t);cdecl;external;

procedure spinner_stop_with_symbol(spinner:Pspinner_t; symbol:Pchar);cdecl;external;

procedure spinner_stop_with_newline(spinner:Pspinner_t);cdecl;external;

procedure spinner_stop_with_message(spinner:Pspinner_t; msg:Pchar);cdecl;external;

procedure spinner_stop_and_persist(spinner:Pspinner_t; symbol:Pchar; msg:Pchar);cdecl;external;

procedure spinner_clean(spinner:Pspinner_t);cdecl;external;

implementation

end.
