package Base_Types.Analyses.Handle is

   package Obj_Rename renames Object;

   package Analyses_Handle is
     new Obj_Rename.Handle (Object, Analyse_Ptr);

end Base_Types.Analyses.Handle;
