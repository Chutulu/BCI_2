with Deposit_Handles;
with Object.Archived;

package LIS_Codes is

   type Object (Length : Natural)
   is
     new Standard.Object.Archived.Deposit with record
      Code : String (1 .. Length);
   end record;

   type LIS_Code_Ptr is access Object'Class;

   overriding function Get_Class (Item : Object) return String;

   overriding procedure Get_Referents
     (Item      : Object;
      Container : in out Standard.Object.Archived.Deposit_Container'Class
     );

   overriding function Is_Modified (Item : Object) return Boolean;

   overriding procedure Reset_Modified (Item : in out Object);

   --procedure Add (List: Deposit_Handles.Handle; Element: Deposit_Handles.Handle);

   procedure Restore_Object
     (Source  : String;
      Pointer : in out Integer;
      Class   : String;
      List    : Standard.Object.Archived.Deposit_Container'Class;
      Item    : out Standard.Object.Archived.Deposit_Ptr
     );

   overriding procedure Store
     (Destination : in out String;
      Pointer     : in out Integer;
      Item        : Object
     );
private
end LIS_Codes;
