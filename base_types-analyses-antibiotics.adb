with Generic_Segmented_Stack;
package body Base_Types.Analyses.Antibiotics is

   Antibiotics_Class : constant String := "Antibiotics_Class";

   function Get_Class (Item : Handle) return String
   is
   begin
      return Antibiotics_Class;
   end Get_Class;

   function Is_Modified (Item : Handle) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Modified unimplemented");
      raise Program_Error with "Unimplemented function Is_Modified";
      return Is_Modified (Item => Item);
   end Is_Modified;

   procedure Reset_Modified (Item : Handle) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Reset_Modified unimplemented");
      raise Program_Error with "Unimplemented procedure Reset_Modified";
   end Reset_Modified;

   procedure Store
     (Destination : in out String;
      Pointer     : in out Integer;
      Item        : Handle)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Store unimplemented");
      raise Program_Error with "Unimplemented procedure Store";
   end Store;

end Base_Types.Analyses.Antibiotics;
