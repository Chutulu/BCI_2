with My_Strings;
with My_Strings.Handle;

package Base_Types.Antibiotics is

   type Object is new Base_Types.Object with private;

   function Name_Value (Item : Object) return String;
   function Code_SIL_Value (Item : Object) return String;
   function CMI_Value ( Item : Object) return String;
   function SIR_Value ( Item : Object) return String;

   function Create_Name (Name : String) return Object;
   function Create_Code_SIL (Code_SIL : String) return Object;
   function Create_CMI (CMI : String) return Object;
   function Create_SIR (SIR : String) return Object;

   function Create (Name                      : String;
                    Code_SIL                  : String;
                    CMI                       : String;
                    SIR                       : String) return Object;

private

   type Object is new Base_Types.Object with
      record
         CMI : My_Strings.Handle.My_Safe_String;
         SIR : My_Strings.Handle.My_Safe_String;
      end record;

end Base_Types.Antibiotics;
