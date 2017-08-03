with My_Strings.Handle;
with Strings_Edit; -- use Strings_Edit;
with Ada.Strings.Unbounded; -- use Ada.Strings.Unbounded;

package Base_Types.Analyses.Antibiotics is

   type Object is new Base_Types.Analyses.Object with private;

   subtype CMI_Type is My_Strings.Handle.My_Safe_String;
   subtype SIR_Type is My_Strings.Handle.My_Safe_String;

   function CMI_Value (Item : Object) return String;
   function SIR_Value (Item : Object) return String;

   procedure Set_CMI (Item : in out Object; CMI : String);
   procedure Set_SIR (Item : in out Object; SIR : String);

   not overriding
   procedure Make (Item           : in out Object;
                   Name           : String;
                   LIS_Code       : String;
                   CMI            : String;
                   SIR            : String);

   function Get_Class (Item : Object) return String;
   function Is_Modified (Item : Object) return Boolean;
   procedure Reset_Modified (Item : in out Object);

private

   procedure Store (Destination : in out String;
                    Pointer     : in out Integer;
                    Item        : Object);

   type Object is new Base_Types.Analyses.Object with
      record
         CMI : CMI_Type;
         SIR : SIR_Type;
      end record;

   type Antibiotic_Ptr is access Object'Class;

end Base_Types.Analyses.Antibiotics;
