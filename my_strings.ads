with Object;

package My_Strings is

   type My_String (Length : Natural)
   is
     new Object.Entity with record
      Value : String (1 .. Length);
   end record;

   type My_String_Ptr is access My_String'Class;

end My_Strings;
