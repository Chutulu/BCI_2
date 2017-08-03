with Generic_Segmented_Stack;
package body Base_Types.Analyses.Antibiotics is

   Antibiotics_Class : constant String := "Antibiotics_Class";

   function CMI_Value (Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.CMI);
   end CMI_Value;

   function SIR_Value (Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.SIR);
   end SIR_Value;

   procedure Set_CMI (Item : in out Object; CMI : String)
   is
   begin
      Item.CMI := My_Strings.Handle.Create (Value => CMI);
   end Set_CMI;

   procedure Set_SIR (Item : in out Object; SIR : String)
   is
   begin
      Item.SIR := My_Strings.Handle.Create (Value => SIR);
   end Set_SIR;

   procedure Make (Item           : in out Object;
                   Name           : String;
                   LIS_Code       : String;
                   CMI            : String;
                   SIR            : String)
   is
   begin
      Base_Types.Analyses.Make(Base_Types.Analyses.Object(Item), Name, LIS_Code);
      Item.CMI := My_Strings.Handle.Create (CMI);
      Item.SIR := My_Strings.Handle.Create (SIR);
   end Make;

   function Get_Class (Item : Object) return String
   is
   begin
      return Antibiotics_Class;
   end Get_Class;

   function Is_Modified (Item : Object) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Modified unimplemented");
      raise Program_Error with "Unimplemented function Is_Modified";
      return Is_Modified (Item => Item);
   end Is_Modified;

   procedure Reset_Modified (Item : in out Object) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Reset_Modified unimplemented");
      raise Program_Error with "Unimplemented procedure Reset_Modified";
   end Reset_Modified;

   procedure Store
     (Destination : in out String;
      Pointer     : in out Integer;
      Item        : Object)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Store unimplemented");
      raise Program_Error with "Unimplemented procedure Store";
   end Store;

end Base_Types.Analyses.Antibiotics;
