package body Base_Types.Antibiotics is

   function Name_Value (Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.Name);
   end Name_Value;

   function Code_SIL_Value (Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.Code_SIL);
   end Code_SIL_Value;

   function CMI_Value ( Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.CMI);
   end CMI_Value;

   function SIR_Value ( Item : Object) return String
   is
   begin
      return My_Strings.Handle.Value (Item.SIR);
   end SIR_Value;

   function Create_Name (Name : String) return Object
   is
      Item : Base_Types.Antibiotics.Object;
   begin
      Item.Name := My_Strings.Handle.Create (Value => Name);
      return Item;
   end Create_Name;

   function Create_Code_SIL (Code_SIL : String) return Object
   is
      Item : Object;
   begin
      Item.Code_SIL := My_Strings.Handle.Create (Value => Code_SIL);
      return Item;
   end Create_Code_SIL;

   function Create_CMI (CMI : String) return Object
   is
      Item : Object;
   begin
      Item.CMI := My_Strings.Handle.Create (Value => CMI);
      return Item;
   end Create_CMI;

      function Create_SIR (SIR : String) return Object
   is
      Item : Object;
   begin
      Item.SIR := My_Strings.Handle.Create (Value => SIR);
      return Item;
   end Create_SIR;

   function Create (Name     : String;
                    Code_SIL : String;
                    CMI      : String;
                    SIR      : String) return Object
   is
      Item : Object;
   begin
      Item.Name := My_Strings.Handle.Create (Name);
      Item.Code_SIL := My_Strings.Handle.Create (Code_SIL);
      Item.CMI := My_Strings.Handle.Create (CMI);
      Item.SIR := My_Strings.Handle.Create (SIR);
      return Item;
   end Create;

end Base_Types.Antibiotics;
