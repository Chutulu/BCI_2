with My_Strings.Handle;
with Object.Archived.Handle;

package Base_Types.Analyses is

   type Object is new Base_Types.Object with null record;

   function Name_Value (Item : Object) return String;
   function LIS_Code_Value (Item : Object) return String;

   procedure Set_Name (Item : in out Object; Name : String);
   procedure Set_LIS_Code (Item : in out Object; LIS_Code : String);

   procedure Make (Item           : in out Object;
                   Name           : String;
                   LIS_Code       : String);

   overriding
   function Get_Class (Item : Object) return String;
   function Is_Modified (Item : Object) return Boolean;
   procedure Reset_Modified (Item : in out Object);

private

   procedure Store (Destination : in out String;
                    Pointer     : in out Integer;
                    Item        : Object);


   type Analyse_Ptr is access Object'Class;

end Base_Types.Analyses;
