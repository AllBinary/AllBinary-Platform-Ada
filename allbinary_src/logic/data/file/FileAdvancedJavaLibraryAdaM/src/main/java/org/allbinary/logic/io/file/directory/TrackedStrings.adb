-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


package body org.allbinary.logic.io.file.directory.TrackedStrings_Package is

   procedure Initialize_Fields (This : in out TrackedStrings'Class) is
   begin
      null;
      This.TARGET_PATH_WINDOWS := To_Unbounded_String ("\" & ASCII.HT & "arget\");
      This.TARGET_PATH_UNIX := To_Unbounded_String ("/target/");
      This.HTML_TEMP := To_Unbounded_String ("HTMLTemp");
      This.APPLICATION := To_Unbounded_String ("Application");
      This.APP := To_Unbounded_String ("\app");
      This.GIT_COMMAND := To_Unbounded_String ("git");
      This.CHANGE_DIRECTORY_OPTION := To_Unbounded_String ("-C");
      This.LIST_FILES_COMMAND := To_Unbounded_String ("ls-files");
      This.ERROR_UNMATCH_OPTION := To_Unbounded_String ("--error-unmatch");
      This.PATHSPEC_SEPARATOR := To_Unbounded_String ("--");
      This.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE := To_Unbounded_String ("-z");
   end Initialize_Fields;

   procedure Initialize (This : in out TrackedStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TrackedStrings_Access is
      This : constant TrackedStrings_Access := new TrackedStrings;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return TrackedStrings_Access is
   begin
        return TrackedStrings_Package.instance;
   end getInstance;

   procedure getInstance is
      Java_Result : constant TrackedStrings_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TrackedStrings_Package.Create;

end org.allbinary.logic.io.file.directory.TrackedStrings_Package;


