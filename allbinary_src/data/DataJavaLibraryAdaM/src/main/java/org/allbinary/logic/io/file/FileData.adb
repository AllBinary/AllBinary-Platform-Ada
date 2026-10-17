--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


package body org.allbinary.logic.io.file.FileData_Package is

   procedure Initialize_Fields (This : in out FileData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("FILE_NAME");
      This.ISFILE := To_Unbounded_String ("FILE_ISFILE");
      This.ISDIRECTORY := To_Unbounded_String ("FILE_ISDIRECTORY");
      This.ISHIDDEN := To_Unbounded_String ("FILE_ISHIDDEN");
      This.ISABSOLUTE := To_Unbounded_String ("FILE_ISABSOLUTE");
      This.ROOT_NAME := To_Unbounded_String ("FILE_ROOT_NAME");
      This.PATH := To_Unbounded_String ("FILE_PATH");
      This.ABSOLUTE_PATH := To_Unbounded_String ("FILE_ABSOLUTE_PATH");
      This.CANONICAL_PATH := To_Unbounded_String ("FILE_CANONICAL_PATH");
      This.PARENT := To_Unbounded_String ("FILE_PARENT");
      This.MINLEN := 1;
      This.MAXLEN := 120;
      This.MAXIMAGEFILESIZE := 1048576;
      This.MINIMAGEFILESIZE := 32;
      This.MAXDOWNLOADABLEFILESIZE := (1048576) * (20);
      This.MINDOWNLOADABLEFILESIZE := 1;
   end Initialize_Fields;


   function getInstance return FileData_Access is
   begin
        return FileData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FileData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FileData_Access is
      This : constant FileData_Access := new FileData;
   begin
      FileData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := FileData_Package.Create;

end org.allbinary.logic.io.file.FileData_Package;


