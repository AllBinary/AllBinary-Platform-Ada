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


package body org.allbinary.logic.io.file.FilePathUtil_Package is

   procedure Initialize_Fields (This : in out FilePathUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FilePathUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return FilePathUtil_Access is
      This : constant FilePathUtil_Access := new FilePathUtil;
   begin
      FilePathUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function adjust (path_Param : Unbounded_String) return Unbounded_String is
      path : Unbounded_String := path_Param;
      abPathData : AbPathData_Access;
      stringValidationUtil : StringValidationUtil_Access;
      filePathData : FilePathData_Access;
   begin
        abPathData := AbPathData_Package.getInstance;
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        filePathData := FilePathData_Package.getInstance;
        if stringValidationUtil.isEmpty (path) then
            return filePathData.PATH_START;
        end if;
        path := path.replace (abPathData.SEPARATORCHAR, filePathData.SEPARATORCHAR);
        return path;
   end adjust;

   procedure adjust (path_Param : Unbounded_String) is
      Java_Result : constant Unbounded_String := adjust (path_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end adjust;

end org.allbinary.logic.io.file.FilePathUtil_Package;


