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
      This.SEPARATORCHAR := '\';
      This.PATH_START := To_Unbounded_String ("\\");
   end Initialize_Fields;


   function getInstance return FilePathData_Access is
   begin
        return FilePathData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out FilePathData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FilePathData_Access is
      This : constant FilePathData_Access := new FilePathData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant FilePathData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := FilePathData_Package.Create;

end org.allbinary.logic.io.file.FilePathData_Package;


