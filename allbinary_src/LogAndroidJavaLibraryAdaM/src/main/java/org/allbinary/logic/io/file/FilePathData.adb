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


package body org.allbinary.logic.io.file.FilePathData_Package is

   procedure Initialize_Fields (This : in out FilePathData'Class) is
   begin
      null;
      This.SEPARATORCHAR := File_Package.separatorChar_Case;
      This.PATH_START := File_Package.separator;
   end Initialize_Fields;


   function getInstance return FilePathData_Access is
   begin
        return FilePathData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FilePathData'Class) is
   begin
      Initialize_Fields (This);
        if (File_Package.separatorChar_Case) = ('\') then
            This.PATH_START := (File_Package.separator) + (File_Package.separator);
        end if;
   end Initialize;

   function Create return FilePathData_Access is
      This : constant FilePathData_Access := new FilePathData;
   begin
      FilePathData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := FilePathData_Package.Create;

end org.allbinary.logic.io.file.FilePathData_Package;


