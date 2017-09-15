with My_Strings.Handles;
with Strings_Edit; -- use Strings_Edit;
with Ada.Strings.Unbounded; -- use Ada.Strings.Unbounded;
with Deposit_Handles;

package Base_Types.Analyses.Antibiotics is

   type Object is new Base_Types.Analyses.Object with private;

   type Antibiotic_Ptr is access Object'Class;

   subtype CMI_Type is My_Strings.Handles.My_Safe_String;
   subtype SIR_Type is My_Strings.Handles.My_Safe_String;

   function Get_Class (Item : Deposit_Handles.Handle) return String;
   function Is_Modified (Item : Deposit_Handles.Handle) return Boolean;
   procedure Reset_Modified (Item : Deposit_Handles.Handle);

private

   procedure Store (Destination : in out String;
                    Pointer     : in out Integer;
                    Item        : Deposit_Handles.Handle);

   type Object is new Base_Types.Analyses.Object with
      record
         CMI : CMI_Type;
         SIR : SIR_Type;
      end record;

end Base_Types.Analyses.Antibiotics;
