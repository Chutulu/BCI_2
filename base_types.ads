with My_Strings.Handle;
with Object.Archived.Handle;

package Base_Types is

   package Obj_Rename renames Object;

   subtype Name_Type is My_Strings.Handle.My_Safe_String;
   subtype LIS_Code_Type is My_Strings.Handle.My_Safe_String;

   type Object is abstract new Obj_Rename.Archived.Deposit with private;

   function Name_Value (Item : Object) return String is abstract;
   function LIS_Code_Value (Item : Object) return String is abstract;

   procedure Set_Name (Item : in out Object; Name : String) is abstract;
   procedure Set_LIS_Code (Item : in out Object; LIS_Code : String)is abstract;

   procedure Make (Item : in out Object; Name : String; LIS_Code : String)is abstract;

private

   type Object is abstract new Obj_Rename.Archived.Deposit with
      record
         Name     : Name_Type;
         LIS_Code : LIS_Code_Type;
      end record;

end Base_Types;
