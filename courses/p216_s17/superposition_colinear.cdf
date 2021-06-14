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
NotebookDataLength[      5637,        144]
NotebookOptionsPosition[      6013,        133]
NotebookOutlinePosition[      6571,        156]
CellTagsIndexPosition[      6528,        153]
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
     RowBox[{"ImageSize", "\[Rule]", "Full"}]}], "]"}], ",", 
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
     RowBox[{"Appearance", "\[Rule]", "\"\<Labeled\>\""}]}], "}"}]}], 
  "]"}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`phi10$$ = -1.5707963267948966`, \
$CellContext`phi20$$ = -1.5707963267948966`, $CellContext`t$$ = 
    10.873523756408705`, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`t$$], 0, 12.56}, {
      Hold[$CellContext`phi10$$], Rational[-1, 2] Pi, Rational[1, 2] Pi}, {
      Hold[$CellContext`phi20$$], Rational[-1, 2] Pi, Rational[1, 2] Pi}}, 
    Typeset`size$$ = {1458., {431., 436.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`t$81714$$ = 0, $CellContext`phi10$81715$$ = 
    0, $CellContext`phi20$81716$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`phi10$$ = 
        Rational[-1, 2] Pi, $CellContext`phi20$$ = 
        Rational[-1, 2] Pi, $CellContext`t$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$81714$$, 0], 
        Hold[$CellContext`phi10$$, $CellContext`phi10$81715$$, 0], 
        Hold[$CellContext`phi20$$, $CellContext`phi20$81716$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi10$$], 
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi20$$], 
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi10$$] + 
         Sin[$CellContext`x - $CellContext`t$$ + $CellContext`phi20$$]}, \
{$CellContext`x, 0, 10}, PlotLegends -> Automatic, ImageSize -> Full], 
      "Specifications" :> {{$CellContext`t$$, 0, 12.56, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}, {$CellContext`phi10$$, Rational[-1, 2] Pi, 
         Rational[1, 2] Pi, Appearance -> "Labeled", 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}, {$CellContext`phi20$$, Rational[-1, 2] Pi, 
         Rational[1, 2] Pi, Appearance -> "Labeled", 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{1505., {494., 501.}},
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
WindowSize->{1473, 987},
WindowMargins->{{Automatic, -57}, {Automatic, 0}},
Visible->True,
AuthoredSize->{1473, 988},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (December 4, 2014)",
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
Cell[1486, 35, 1243, 34, 37, "Input"],
Cell[2732, 71, 3265, 59, 997, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Kx0xLyWEiW50FDKK0Vqaqo1# *)
