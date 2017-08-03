with Object.Handle;

package My_Strings.Handle is
   --
   -- Though an instantiation of Object.Handle provides handles to
   -- My_String, we would like to have some additional operations on
   -- handles.
   --
   package My_String_Handle is
     new Object.Handle (My_String, My_String_Ptr);
   --
   -- So we immediately derive from the obtained type. Note that no
   -- additional components needed (with null record).
   --
   type My_Safe_String is
     new My_String_Handle.Handle with null record;
   --
   -- Now define useful operations on string handles:
   --

   function Create (Value : String) return My_Safe_String;

   function "+" (Value : String) return My_Strings.Handle.My_Safe_String
                 renames My_Strings.Handle.Create;

   function Value (Reference : My_Safe_String) return String;
   --
   -- Note that Copy takes handle as an inout-parameter. It does not touch
   -- the old object it just creates a new one and sets handle to point to
   -- it. The old object is automatically destroyed if no more referenced.
   --
   procedure Copy (Reference : in out My_Safe_String;
                   New_Value : String);

   procedure Copy (Reference : in out My_Safe_String;
                   New_Value : My_Safe_String);

private
   --
   -- Note that Ref shall be overridden. This is a language requirement,
   -- which ensures that the results are covariant. We make it private
   -- because there is no need for a user to access it.
   --
   function Ref (Pointer : My_String_Ptr) return My_Safe_String;

end My_Strings.Handle;
