(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      5759,        145]
NotebookOptionsPosition[      6133,        134]
NotebookOutlinePosition[      6693,        157]
CellTagsIndexPosition[      6650,        154]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"x", "-", "t", "+", "phi10"}], "]"}], ",", 
       RowBox[{"Sin", "[", 
        RowBox[{"x", "-", "t", "+", "phi20"}], "]"}], ",", 
       RowBox[{
        RowBox[{"Sin", "[", 
         RowBox[{"x", "-", "t", "+", "phi10"}], "]"}], "+", 
        RowBox[{"Sin", "[", 
         RowBox[{"x", "-", "t", "+", "phi20"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "10"}], "}"}], ",", 
     RowBox[{"PlotLegends", "\[Rule]", "Automatic"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"t", ",", "0", ",", "12.56"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"phi10", ",", 
     RowBox[{
      RowBox[{"-", "Pi"}], "/", "2"}], ",", 
     RowBox[{"Pi", "/", "2"}], ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"phi20", ",", 
     RowBox[{
      RowBox[{"-", "Pi"}], "/", "2"}], ",", 
     RowBox[{"Pi", "/", "2"}], ",", 
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`phi10$$ = Rational[-1, 2] 
    Pi, $CellContext`phi20$$ = Rational[-1, 2] Pi, $CellContext`t$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`t$$], 0, 12.56}, {
      Hold[$CellContext`phi10$$], Rational[-1, 2] Pi, Rational[1, 2] Pi}, {
      Hold[$CellContext`phi20$$], Rational[-1, 2] Pi, Rational[1, 2] Pi}}, 
    Typeset`size$$ = {633., {175., 179.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`t$48913$$ = 0, $CellContext`phi10$48914$$ = 
    0, $CellContext`phi20$48915$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`phi10$$ = 
        Rational[-1, 2] Pi, $CellContext`phi20$$ = 
        Rational[-1, 2] Pi, $CellContext`t$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$48913$$, 0], 
        Hold[$CellContext`phi10$$, $CellContext`phi10$48914$$, 0], 
        Hold[$CellContext`phi20$$, $CellContext`phi20$48915$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi10$$], 
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi20$$], 
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi10$$] + 
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi20$$]}, \
{$CellContext`x, 0, 10}, PlotLegends -> Automatic, ImageSize -> Large], 
      "Specifications" :> {{$CellContext`t$$, 0, 12.56, AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}, {$CellContext`phi10$$, Rational[-1, 2] Pi, 
         Rational[1, 2] Pi, Appearance -> "Labeled", AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}, {$CellContext`phi20$$, Rational[-1, 2] Pi, 
         Rational[1, 2] Pi, Appearance -> "Labeled", AnimationRunning -> 
         False, AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{680., {247., 254.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{1101, 555},
WindowMargins->{{405, Automatic}, {Automatic, 208}},
Visible->True,
AuthoredSize->{1101, 555},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Microsoft Windows (32-bit) (December 4, 2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 1302, 35, 57, "Input"],
Cell[2791, 72, 3326, 59, 503, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 8wplBdUPlhJytA1XxGWTihto *)
