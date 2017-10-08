with Object.Archived.Handle;
package Base_Types.Analyses.Antibiotics.Handles is

   package Antibiotics_Handles is
     new Standard.Object.Archived.Handle (Object, Antibiotic_Ptr);

   type Antibiotic_Handle is
     new Antibiotics_Handles.Handle with null record;

   function Name_Value (Item : Antibiotic_Handle) return String;
   function LIS_Code_Value (Item : Antibiotic_Handle) return String;
   function CMI_Value (Item : Antibiotic_Handle) return String;
   function SIR_Value (Item : Antibiotic_Handle) return String;
   function Image (Item : Antibiotic_Handle) return String;

   procedure Set_Name
     (Item : Antibiotic_Handle;
      Name : String
     );

   procedure Set_LIS_Code
     (Item     : Antibiotic_Handle;
      LIS_Code : String
     );

   procedure Set_CMI
     (Item : Antibiotic_Handle;
      CMI  : String
     );

   procedure Set_SIR
     (Item : Antibiotic_Handle;
      SIR  : String
     );

   function Make
     (Name           : String;
      LIS_Code       : String;
      CMI            : String;
      SIR            : String
     ) return Antibiotic_Handle;

private

   function Ref (Pointer : Antibiotic_Ptr) return Antibiotic_Handle;

end Base_Types.Analyses.Antibiotics.Handles;
