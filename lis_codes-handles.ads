with Object.Archived.Handle;

package LIS_Codes.Handles is

   package LIS_Codes_Handles is
     new Standard.Object.Archived.Handle (Object, LIS_Code_Ptr);

   -- if error: actual subtype must be constrained
   -- Edit file object - archived - handle.ads and replace :

   -- generic
      -- type Object_Type is abstract new Deposit with private;

      -- with

      -- generic
         -- type Object_Type (<>) is abstract new Deposit with private;

   type LIS_Code is
     new LIS_Codes_Handles.Handle with null record;
   -- A handle to an object of type LIS_Code

   function Create (Code : String) return LIS_Code;

   function "+" (Code : String) return LIS_Codes.Handles.LIS_Code
                 renames LIS_Codes.Handles.Create;

   function Value (Reference : LIS_Code) return String;
   --
   -- Note that Copy takes handle as an inout-parameter. It does not touch
   -- the old object it just creates a new one and sets handle to point to
   -- it. The old object is automatically destroyed if no more referenced.
   --
   procedure Copy (Reference : in out LIS_Code;
                   New_Value : String);

   procedure Copy (Reference : in out LIS_Code;
                   New_Value : LIS_Code);

private
   --
   -- Note that Ref shall be overridden. This is a language requirement,
   -- which ensures that the results are covariant. We make it private
   -- because there is no need for a user to access it.
   --
   function Ref (Pointer : LIS_Code_Ptr) return LIS_Code;

end LIS_Codes.Handles;
