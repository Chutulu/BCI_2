package body My_Strings.Handles is

   function Create (Value : String) return My_Safe_String
   is
      Ptr : My_String_Ptr := new My_String (Value'Length);
   begin
      Ptr.Value := Value;
      return Ref (Ptr);
   end Create;

   function Value (Reference : My_Safe_String) return String
   is
   begin
      return Ptr (Reference).Value;
   end Value;

   procedure Copy (Reference : in out My_Safe_String;
                     New_Value : String)
   is
   begin
      Reference := Create (New_Value);
   end Copy;

   procedure Copy (Reference : in out My_Safe_String;
                     New_Value : My_Safe_String)
   is
   begin
      Reference := Create (Value (New_Value));
   end Copy;

   function Ref (Pointer : My_String_Ptr) return My_Safe_String
   is
   begin
      return (My_String_Handles.Ref (Pointer) with null record);
   end Ref;

end My_Strings.Handles;
