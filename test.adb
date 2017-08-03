with Ada.Text_IO;
with Ada.Exceptions;

with Gnat.Traceback.Symbolic; use Gnat;

with Base_Types.Analyses.Antibiotics;
--with Analyses.Antibiotics.Handle;
--with My_Strings;
--with My_Strings.Handle;

procedure Test is

   Test_Antibiotic : Base_Types.Analyses.Antibiotics.Object;
   Test_Antibiotic_2:Base_Types.Analyses.Antibiotics.Object;

begin

   Test_Antibiotic.Make (Name     => "Test Antibiotic 1",
                         LIS_Code => "123",
                         CMI      => "1",
                         SIR      => "S");

   Test_Antibiotic_2.Make (Name     => "Test Antibiotic ",
                           LIS_Code => "abc",
                           CMI      => "24",
                           SIR      => "R");

   Ada.Text_IO.Put_Line ("Test record run 1:");
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.LIS_Code_Value);
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line ("Test record run 2:");
   Ada.Text_IO.New_Line;

   Test_Antibiotic.Set_Name ("Test Antibiotic 2");
   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);

   Test_Antibiotic.Set_LIS_Code (LIS_Code => "amc");
   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.LIS_Code_Value);

   Test_Antibiotic.Set_CMI (CMI => "2");
   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);

   Test_Antibiotic.Set_SIR (SIR => "R");
   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line ("Test record run 3:");
   Ada.Text_IO.New_Line;

   Test_Antibiotic.Set_Name (Name => "Test Antibiotic 3");
   Test_Antibiotic.Set_LIS_Code (LIS_Code => "gen");
   Test_Antibiotic.Set_CMI (CMI => "8");
   Test_Antibiotic.Set_SIR (SIR => "I");

   Ada.Text_IO.Put_Line ("Print run 3:");

   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.LIS_Code_Value);
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);

   Ada.Text_IO.Put_Line ("Print run 4:");

   Ada.Text_IO.Put_Line ("Test_Antibiotic");
   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.LIS_Code_Value);
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);
   ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("Test_Antibiotic_2");
   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic_2.Name_Value);
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic_2.LIS_Code_Value);
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic_2.CMI_Value);
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic_2.SIR_Value);

exception

   when Err : others =>
      Ada.Text_IO.Put_Line ("Problem: " &
                              Ada.Exceptions.Exception_Information (Err));

      Ada.Text_IO.Put_Line (Traceback.Symbolic.Symbolic_Traceback (Err));

end Test;
