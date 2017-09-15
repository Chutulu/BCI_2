with Ada.Text_IO;
with Ada.Exceptions;

with GNAT.Traceback.Symbolic; use GNAT;

with Base_Types.Analyses.Antibiotics.Handles;
with Base_Types.Analyses.Handles;
procedure Test is

    package Analyse renames Base_Types.Analyses.Handles;
   package Antibiotic renames Base_Types.Analyses.Antibiotics.Handles;

   Test_Analyse      : Analyse.Analyse_Handle;
   Test_Antibiotic   : Antibiotic.Antibiotic_Handle;
   Test_Antibiotic_2 : Antibiotic.Antibiotic_Handle;

begin

   -- Test Analyse.Make
   -- Debugging
   -- Ada.Text_IO.Put_Line ("Before Create");

   Test_Analyse := Analyse.Make (Name     => "Test Analyse",
                                 LIS_Code => "Tada");

   -- Debugging
   -- Ada.Text_IO.Put_Line ("after Create");

   -- Test Analyse Getters
   Ada.Text_IO.Put_Line (Analyse.Name_Value (Test_Analyse)
                         & " " & Analyse.LIS_Code_Value (Test_Analyse));

   -- Debugging
   -- Ada.Text_IO.Put_Line ("modify after Create");

   -- Test Analyse Setters
   Analyse.Set_Name (Test_Analyse, "New Name");
   Analyse.Set_LIS_Code (Test_Analyse, "Pff");

   -- Test Analyse Image
   Ada.Text_IO.Put_Line (Analyse.Image (Test_Analyse));

   -- Test Antibiotic.Make

   -- Debugging
   -- Ada.Text_IO.Put_Line ("Before Make");

   Test_Antibiotic := Antibiotic.Make (Name     => "Test Antibiotic 1",
                                       LIS_Code => "123",
                                       CMI      => "1",
                                       SIR      => "S");

   Test_Antibiotic_2 := Antibiotic.Make (Name     => "Test Antibiotic 2",
                                         LIS_Code => "abc",
                                         CMI      => "24",
                                         SIR      => "R");

   -- Debugging
   -- Ada.Text_IO.Put_Line ("After Make");

   -- Test Antibiotic Getters
   Ada.Text_IO.Put_Line ("Test record run 1:");
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("Name: " & Antibiotic.Name_Value (Test_Antibiotic));
   Ada.Text_IO.Put_Line ("Code SIL: " & Antibiotic.LIS_Code_Value (Test_Antibiotic));
   Ada.Text_IO.Put_Line ("CMI: " & Antibiotic.CMI_Value (Test_Antibiotic));
   Ada.Text_IO.Put_Line ("SIR: " & Antibiotic.SIR_Value (Test_Antibiotic));
   Ada.Text_IO.New_Line;

   -- Test Antibiotic Setters
   Ada.Text_IO.Put_Line ("Test record run 2:");
   Ada.Text_IO.New_Line;

   Antibiotic.Set_Name (Item => Test_Antibiotic, Name => "Test Antibiotic => 2");
   Antibiotic.Set_LIS_Code (Item => Test_Antibiotic, LIS_Code => "amc");
   Antibiotic.Set_CMI (Item => Test_Antibiotic, CMI => "2");
   Antibiotic.Set_SIR (Item => Test_Antibiotic, SIR => "R");

   Ada.Text_IO.Put_Line ("Name: " & Antibiotic.Name_Value (Test_Antibiotic));
   Ada.Text_IO.Put_Line ("Code SIL: " & Antibiotic.LIS_Code_Value (Test_Antibiotic));
   Ada.Text_IO.Put_Line ("CMI: " & Antibiotic.CMI_Value (Test_Antibiotic));
   Ada.Text_IO.Put_Line ("SIR: " & Antibiotic.SIR_Value (Test_Antibiotic));
   Ada.Text_IO.New_Line;

   -- Check if type objects are independent
   -- Test_Antibiotic 2 shouldn't change

   Ada.Text_IO.Put_Line ("Name: " & Antibiotic.Name_Value (Test_Antibiotic_2));
   Ada.Text_IO.Put_Line ("Code SIL: " & Antibiotic.LIS_Code_Value (Test_Antibiotic_2));
   Ada.Text_IO.Put_Line ("CMI: " & Antibiotic.CMI_Value (Test_Antibiotic_2));
   Ada.Text_IO.Put_Line ("SIR: " & Antibiotic.SIR_Value (Test_Antibiotic_2));
   Ada.Text_IO.New_Line;

   -- Test Antibiotic Image

   Ada.Text_IO.Put_Line ("Antibiotic Image " & Antibiotic.Image (Test_Antibiotic));
   Ada.Text_IO.Put_Line ("Antibiotic Image " & Antibiotic.Image (Test_Antibiotic_2));

exception

   when Err : others =>
      Ada.Text_IO.Put_Line ("Problem: " &
                              Ada.Exceptions.Exception_Information (Err));

      Ada.Text_IO.Put_Line (Traceback.Symbolic.Symbolic_Traceback (Err));

end Test;
