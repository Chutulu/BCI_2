with Object.Archived.Handle;
package Base_Types.Analyses.Handles is

   package Analyses_Handles is
     new Standard.Object.Archived.Handle (Object, Analyse_Ptr);

   type Analyse_Handle is
     new Analyses_Handles.Handle with null record;

   function Name_Value (Item : Analyse_Handle) return String;
   function LIS_Code_Value (Item : Analyse_Handle) return String;

   procedure Set_LIS_Code
     (Item     : Analyse_Handle;
      LIS_Code : String
     );

   procedure Set_Name
     (Item : Analyse_Handle;
      Name : String
     );

   function Make (Name : String; LIS_Code : String) return Analyse_Handle;

   function Image (Item : Analyse_Handle) return String;

private

   function Ref (Pointer : Analyse_Ptr) return Analyse_Handle;

end Base_Types.Analyses.Handles;
