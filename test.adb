with Ada.Text_IO;
with Ada.Exceptions;

with Gnat.Traceback.Symbolic; use Gnat;

with Base_Types.Antibiotics;
with My_Strings;
with My_Strings.Handle;

procedure Test is

   package SS renames My_Strings.Handle;

   Test_Antibiotic : Base_Types.Antibiotics.Object;

begin

   Test_Antibiotic := Test_Antibiotic.Create (Name     => "Test Antibiotic 1",
                                              Code_SIL => "123",
                                              CMI      => "1",
                                              SIR      => "S");

   Ada.Text_IO.Put_Line ("Test record run 1:");
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.Code_SIL_Value);
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line ("Test record run 2:");
   Ada.Text_IO.New_Line;

   Test_Antibiotic := Test_Antibiotic.Create_Name ("Test Antibiotic 2");
   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);

   Test_Antibiotic := Test_Antibiotic.Create_Code_SIL (Code_SIL => "amc");
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.Code_SIL_Value);

   Test_Antibiotic := Test_Antibiotic.Create_CMI (CMI => "2");
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);

   Test_Antibiotic := Test_Antibiotic.Create_SIR (SIR => "R");
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);
   Ada.Text_IO.New_Line;

   Ada.Text_IO.Put_Line ("Test record run 3:");
   Ada.Text_IO.New_Line;

   Test_Antibiotic := Test_Antibiotic.Create_Name (Name => "Test Antibiotic 3");
   Test_Antibiotic := Test_Antibiotic.Create_Code_SIL (Code_SIL => "gen");
   Test_Antibiotic := Test_Antibiotic.Create_CMI (CMI => "8");
   Test_Antibiotic := Test_Antibiotic.Create_SIR (SIR => "I");

   Ada.Text_IO.Put_Line ("Print run 3:");

   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.Code_SIL_Value);
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);

   Ada.Text_IO.Put_Line ("Print run 4:");

   Ada.Text_IO.Put_Line ("Name: " & Test_Antibiotic.Name_Value);
   Ada.Text_IO.Put_Line ("Code SIL: " & Test_Antibiotic.Code_SIL_Value);
   Ada.Text_IO.Put_Line ("CMI: " & Test_Antibiotic.CMI_Value);
   Ada.Text_IO.Put_Line ("SIR: " & Test_Antibiotic.SIR_Value);

exception

   when Err : others =>
      Ada.Text_IO.Put_Line ("Problem: " &
                              Ada.Exceptions.Exception_Information (Err));

      Ada.Text_IO.Put_Line (Traceback.Symbolic.Symbolic_Traceback (Err));

end Test;
