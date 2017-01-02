with My_Strings;
with My_Strings.Handle;

package Base_Types is

   type Object is abstract tagged private;

   function Create_Name (Item : in out Object; Name : String) return Object is abstract;
   function Create_Code_SIL (Item : in out Object; Code_SIL : String) return Object is abstract;

   function Name_Value (Item : Object) return String is abstract;
   function Code_SIL_Value (Item : Object) return String is abstract;

private

   type Object is abstract tagged
      record
         Name     : My_Strings.Handle.My_Safe_String;
         Code_SIL : My_Strings.Handle.My_Safe_String;
      end record;

end Base_Types;
