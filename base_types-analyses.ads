package Base_Types.Analyses is

   type Object is new Base_Types.Object with null record;

   type Analyse_Ptr is access Object'Class;

private

   overriding function Get_Class (Item : Object) return String;

   overriding procedure Get_Referents
     (Item      : Object;
      Container : in out Standard.Object.Archived.Deposit_Container'Class
     );

   overriding function Is_Modified (Item : Object) return Boolean;

   overriding procedure Reset_Modified (Item : in out Object);

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

end Base_Types.Analyses;
