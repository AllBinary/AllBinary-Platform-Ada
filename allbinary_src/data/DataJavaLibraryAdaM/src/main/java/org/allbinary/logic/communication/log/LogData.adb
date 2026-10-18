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


with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;

package body org.allbinary.logic.communication.log.LogData_Package is

   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   procedure Initialize_Fields (This : in out LogData'Class) is
   begin
      null;
      This.MAX := 5000000;
      This.extension := To_Unbounded_String ("log");
      This.backupFileExt := Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP) & To_Unbounded_String ("bak") & Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP) & To_Unbounded_String ("txt");
      This.ALLBINARY := To_Unbounded_String ("allbinary");
      This.NAME := To_Unbounded_String ("LOG_NAME");
      This.DESCRIPTION := To_Unbounded_String ("LOG_DESCRIPTION");
   end Initialize_Fields;

   procedure Initialize (This : in out LogData'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LogData_Access is
      This : constant LogData_Access := new LogData;
   begin
      LogData_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.logic.communication.log.LogData_Package;


