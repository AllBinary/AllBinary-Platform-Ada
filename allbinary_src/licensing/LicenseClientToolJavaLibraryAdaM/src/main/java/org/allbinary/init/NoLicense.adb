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


with org.allbinary.globals.Globals_Package; use org.allbinary.globals.Globals_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.init.NoLicense_Package is

   package Globals_Package renames Standard.org.allbinary.globals.Globals_Package;
   procedure Initialize_Fields (This : in out NoLicense'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoLicense'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoLicense_Access is
      This : constant NoLicense_Access := new NoLicense;
   begin
      NoLicense_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (classLoader_Param : access ClassLoader_Package.ClassLoader'Class; pathString : Unbounded_String) is
      classLoader : constant ClassLoader_Access := ClassLoader_Access (classLoader_Param);
   begin
        Globals_Package.init (classLoader, pathString);
   end init;

end org.allbinary.init.NoLicense_Package;


