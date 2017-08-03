with Generic_Segmented_Stack;
package body Analyses.Handle is



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
      Item.Name := My_Strings.Handle.Create (Value => Name);
   end Set_Name;

   ------------------
   -- Set_LIS_Code --
   ------------------

   procedure Set_LIS_Code (Item : in out Object; LIS_Code : String)
   is
   begin
      Item.LIS_Code := My_Strings.Handle.Create (Value => LIS_Code);
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

end Analyses.Handle;
