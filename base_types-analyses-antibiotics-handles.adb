with Object.Archived; use Object.Archived;
package body Base_Types.Analyses.Antibiotics.Handles is

   --------------------
   -- LIS_Code_Value --
   --------------------
   function LIS_Code_Value (Item : Antibiotic_Handle) return String
   is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      return My_Strings.Handles.Value (This.LIS_Code);
   end LIS_Code_Value;

   ----------------
   -- Name_Value --
   ----------------
   function Name_Value (Item : Antibiotic_Handle) return String
   is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      return My_Strings.Handles.Value (This.Name);
   end Name_Value;

   ---------------
   -- CMI_Value --
   ---------------
   function CMI_Value (Item : Antibiotic_Handle) return String
   is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      if This in Deposit'Class then
         return My_Strings.Handles.Value (This.CMI);
      else
         return "Unknown";
      end if;
   end CMI_Value;

   ---------------
   -- SIR_Value --
   ---------------
   function SIR_Value (Item : Antibiotic_Handle) return String
   is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      if This in Deposit'Class then
         return My_Strings.Handles.Value (This.SIR);
      else
         return "Unknown";
      end if;
   end SIR_Value;

   -----------
   -- Image --
   -----------
   function Image (Item : Antibiotic_Handle) return String is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      return My_Strings.Handles.Value (This.Name) & " " &
        SIR_Value (Item) & " " & CMI_Value (Item);
   end Image;

   ------------------
   -- Set_LIS_Code --
   ------------------
   procedure Set_LIS_Code
     (Item     : Antibiotic_Handle;
      LIS_Code : String
     ) is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      This.LIS_Code := My_Strings.Handles.Create (LIS_Code);
   end Set_LIS_Code;

   --------------
   -- Set_Name --
   --------------
   procedure Set_Name
     (Item : Antibiotic_Handle;
      Name : String
     ) is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      This.Name := My_Strings.Handles.Create (Name);
   end Set_Name;

   -------------
   -- Set_CMI --
   -------------
   procedure Set_CMI
     (Item     : Antibiotic_Handle;
      CMI      : String
     ) is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      This.CMI := My_Strings.Handles.Create (CMI);
   end Set_CMI;

   -------------
   -- Set_SIR --
   -------------
   procedure Set_SIR
     (Item : Antibiotic_Handle;
      SIR  : String
     ) is
      This : Deposit'Class renames Ptr (Item).all;
   begin
      This.SIR := My_Strings.Handles.Create (SIR);
   end Set_SIR;

   ----------
   -- Make --
   ----------
   function Make
     (Name           : String;
      LIS_Code       : String;
      CMI            : String;
      SIR            : String
     ) return Antibiotic_Handle
   is
      This : Antibiotic_Ptr := new Deposit;
   begin
      This.Name := My_Strings.Handles.Create (Name);
      This.LIS_Code := My_Strings.Handles.Create (LIS_Code);
      This.CMI := My_Strings.Handles.Create (CMI);
      This.SIR := My_Strings.Handles.Create (SIR);
      return Ref (This);
   end Make;

   ---------
   -- Ref --
   ---------
   function Ref (Pointer : Antibiotic_Ptr) return Antibiotic_Handle
   is
   begin
      return (Antibiotic_Handle.Ref (Pointer) with null record);
   end Ref;

end Base_Types.Analyses.Antibiotics.Handles;
