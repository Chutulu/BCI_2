-- with Object.Archived.Handle;
with Deposit_Handles;
package Base_Types.Analyses.Handles is

   type Analyse_Handle is
     new Deposit_Handles.Handle with null record;

   function Name_Value (Item : Analyse_Handle) return String;
   function LIS_Code_Value (Item : Analyse_Handle) return String;

   procedure Set_Name
     (Item : Analyse_Handle;
      Name : String
     );

   procedure Set_LIS_Code
     (Item     : Analyse_Handle;
      LIS_Code : String
     );

   function Make (Name : String; LIS_Code : String) return Analyse_Handle;

   function Image (Item : Analyse_Handle) return String;

   function Ref (Pointer : Analyse_Ptr) return Analyse_Handle;

private


end Base_Types.Analyses.Handles;
