package body LIS_Codes.Handles is

   function Create (Code : String) return LIS_Code
   is
      Ptr : LIS_Code_Ptr := new Object (Code'Length);
   begin
      Ptr.Code := Code;
      return Ref (Ptr);
   end Create;

   function Value (Reference : LIS_Code) return String
   is
   begin
      return Ptr (Reference).Code;
   end Value;

   procedure Copy (Reference : in out LIS_Code;
                     New_Value : String)
   is
   begin
      Reference := Create (New_Value);
   end Copy;

   procedure Copy (Reference : in out LIS_Code;
                     New_Value : LIS_Code)
   is
   begin
      Reference := Create (Value (New_Value));
   end Copy;

   function Ref (Pointer : LIS_Code_Ptr) return LIS_Code
   is
   begin
      return (LIS_Codes_Handles.Ref (Pointer) with null record);
   end Ref;

end LIS_Codes.Handles;
