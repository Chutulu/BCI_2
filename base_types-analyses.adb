with Generic_Segmented_Stack;
package body Base_Types.Analyses is

   Analyses_Class: constant String :="Analyses_Class";

   ----------------
   -- Name_Value --
   ----------------

   function Name_Value (Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.Name);
   end Name_Value;

   --------------------
   -- LIS_Code_Value --
   --------------------

   function LIS_Code_Value (Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.LIS_Code);
   end LIS_Code_Value;

   --------------
   -- Set_Name --
   --------------

   procedure Set_Name (Item : in out Object; Name : String)
   is
   begin
      Item.Name := My_Strings.Handle.Create (Name);
   end Set_Name;

   ------------------
   -- Set_LIS_Code --
   ------------------

   procedure Set_LIS_Code (Item : in out Object; LIS_Code : String)
   is
   begin
      Item.LIS_Code := My_Strings.Handle.Create (LIS_Code);
   end Set_LIS_Code;

   ----------
   -- Make --
   ----------

   procedure Make (Item           : in out Object;
                   Name           : String;
                   LIS_Code       : String)
   is
   begin
      Item.Name := My_Strings.Handle.Create (Name);
      Item.LIS_Code := My_Strings.Handle.Create (LIS_Code);
   end Make;

   ---------------
   -- Get_Class --
   ---------------

   overriding
   function Get_Class (Item : Object) return String
   is
   begin
      return Analyses_Class;
   end Get_Class;

   -----------------
   -- Is_Modified --
   -----------------

   function Is_Modified (Item : Object) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Modified unimplemented");
      raise Program_Error with "Unimplemented function Is_Modified";
      return Is_Modified (Item => Item);
   end Is_Modified;

   --------------------
   -- Reset_Modified --
   --------------------

   procedure Reset_Modified (Item : in out Object) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Reset_Modified unimplemented");
      raise Program_Error with "Unimplemented procedure Reset_Modified";
   end Reset_Modified;

   -----------
   -- Store --
   -----------

   procedure Store (Destination : in out String;
                    Pointer     : in out Integer;
                    Item        : Object)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Store unimplemented");
      raise Program_Error with "Unimplemented procedure Store";
   end Store;

end Base_Types.Analyses;