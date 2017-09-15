-- with Generic_Segmented_Stack;
package body Base_Types.Analyses.Handles is

   --------------------
   -- LIS_Code_Value --
   --------------------
   function LIS_Code_Value (Item : Analyse_Handle) return String
   is
      This : Object'Class renames Ptr (Item).all;
   begin
      if This in Object'Class then
         return My_Strings.Handles.Value (This.LIS_Code);
      else
         return "Unknown";
      end if;
   end LIS_Code_Value;

   ----------------
   -- Name_Value --
   ----------------
   function Name_Value (Item : Analyse_Handle) return String
   is
      This : Object'Class renames Ptr (Item).all;
   begin
      if This in Object'Class then
         return My_Strings.Handles.Value (This.Name);
      else
         return "Unknown";
      end if;
   end Name_Value;

   ------------------
   -- Set_LIS_Code --
   ------------------
   procedure Set_LIS_Code
     (Item     : Analyse_Handle;
      LIS_Code : String
     ) is
      This : Object'Class renames Ptr (Item).all;
   begin
      This.LIS_Code := My_Strings.Handles.Create (LIS_Code);
   end Set_LIS_Code;

   --------------
   -- Set_Name --
   --------------
   procedure Set_Name
     (Item : Analyse_Handle;
      Name : String
     ) is
      This : Object'Class renames Ptr (Item).all;
   begin
      This.Name := My_Strings.Handles.Create (Name);
   end Set_Name;

   ----------
   -- Make --
   ----------
   function Make (Name : String; LIS_Code : String) return Analyse_Handle
   is
      This : Analyse_Ptr := new Object;
   begin
      This.Name := My_Strings.Handles.Create (Name);
      This.LIS_Code := My_Strings.Handles.Create (LIS_Code);
      return Ref (This);
   end Make;

   -----------
   -- Image --
   -----------
   function Image (Item : Analyse_Handle) return String is
   begin
      return LIS_Code_Value (Item) & " " & Name_Value (Item);
   end Image;

   ---------
   -- Ref --
   ---------
   function Ref (Pointer : Analyse_Ptr) return Analyse_Handle
   is
   begin
      return (Analyses_Handle.Ref (Pointer) with null record);
   end Ref;

end Base_Types.Analyses.Handles;
