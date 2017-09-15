package body Base_Types.Analyses is

   Analyses_Class : constant String := "Analyses_Class";

   ---------------
   -- Get_Class --
   ---------------
   overriding function Get_Class (Item : Object) return String
   is
   begin
      return Analyses_Class;
   end Get_Class;

   -------------------
   -- Get_Referents --
   -------------------
   overriding procedure Get_Referents
     (Item      : Object;
      Container : in out Standard.Object.Archived.Deposit_Container'Class
     ) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Referents unimplemented");
      raise Program_Error with "Unimplemented procedure Get_Referents";
   end Get_Referents;

   -----------------
   -- Is_Modified --
   -----------------
   overriding function Is_Modified (Item : Object) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Modified unimplemented");
      raise Program_Error with "Unimplemented function Is_Modified";
      return Is_Modified (Item => Item);
   end Is_Modified;

   --------------------
   -- Reset_Modified --
   --------------------
   overriding procedure Reset_Modified (Item : in out Object) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Reset_Modified unimplemented");
      raise Program_Error with "Unimplemented procedure Reset_Modified";
   end Reset_Modified;

   --------------------
   -- Restore_Object --
   --------------------
   procedure Restore_Object
     (Source  : String;
      Pointer : in out Integer;
      Class   : String;
      List    : Standard.Object.Archived.Deposit_Container'Class;
      Item    : out Standard.Object.Archived.Deposit_Ptr
     ) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Restore_Object unimplemented");
      raise Program_Error with "Unimplemented procedure Restore_Object";
   end Restore_Object;

   -----------
   -- Store --
   -----------
   overriding procedure Store
     (Destination : in out String;
      Pointer     : in out Integer;
      Item        : Object
     ) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Store unimplemented");
      raise Program_Error with "Unimplemented procedure Store";
   end Store;

end Base_Types.Analyses;
