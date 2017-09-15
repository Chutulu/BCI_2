with My_Strings.Handles;
with Deposit_Handles;
with Object.Archived;
package Base_Types is

   subtype Name_Type is My_Strings.Handles.My_Safe_String;
   subtype LIS_Code_Type is My_Strings.Handles.My_Safe_String;

   type Object is abstract new Standard.Object.Archived.Deposit with private;

   function Name_Value (Item : Deposit_Handles.Handle) return String is abstract;

   function LIS_Code_Value (Item : Deposit_Handles.Handle) return String is abstract;

   procedure Set_Name
     (Item : Deposit_Handles.Handle;
      Name : String
     ) is abstract;

   procedure Set_LIS_Code
     (Item     : Deposit_Handles.Handle;
      LIS_Code : String
     ) is abstract;

   procedure Make
     (Item     : Deposit_Handles.Handle;
      Name     : String;
      LIS_Code : String
     ) is abstract;

   function Image (Item : Deposit_Handles.Handle) return String is abstract;

   function Get_Class (Item : Object) return String is abstract;

   procedure Get_Referents
     (Item      : Object;
      Container : in out Standard.Object.Archived.Deposit_Container'Class
     ) is abstract;

   function Is_Modified (Item : Object) return Boolean is abstract;

   procedure Reset_Modified (Item : in out Object) is abstract;

   procedure Restore_Object
     (Source  : String;
      Pointer : in out Integer;
      Class   : String;
      List    : Standard.Object.Archived.Deposit_Container'Class;
      Item    : out Standard.Object.Archived.Deposit_Ptr
     ) is abstract;

   procedure Store
     (Destination : in out String;
      Pointer     : in out Integer;
      Item        : Object
     ) is abstract;

private

   type Object is abstract new Standard.Object.Archived.Deposit with
      record
         Name     : Name_Type;
         LIS_Code : LIS_Code_Type;
      end record;

end Base_Types;
