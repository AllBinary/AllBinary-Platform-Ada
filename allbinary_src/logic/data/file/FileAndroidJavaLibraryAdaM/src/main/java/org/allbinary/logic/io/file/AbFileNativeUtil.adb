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



package body org.allbinary.logic.io.file.AbFileNativeUtil_Package is

   procedure Initialize_Fields (This : in out AbFileNativeUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AbFileNativeUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AbFileNativeUtil_Access is
      This : constant AbFileNativeUtil_Access := new AbFileNativeUtil;
   begin
      AbFileNativeUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function get (file_Param : access AbFile_Package.AbFile'Class) return File_Access is
      file : constant AbFile_Access := AbFile_Access (file_Param);
   begin
        return file.getFile;
   end get;

   procedure get (file_Param : access AbFile_Package.AbFile'Class) is
      Java_Result : constant File_Access := get (file_Param => file_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.logic.io.file.AbFileNativeUtil_Package;


