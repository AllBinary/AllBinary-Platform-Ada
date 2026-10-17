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


package body org.allbinary.globals.PATH_GLOBALS_Package is

   procedure Initialize_Fields (This : in out PATH_GLOBALS'Class) is
   begin
      null;
      
      
      
      
      
   end Initialize_Fields;


   function getInstance return PATH_GLOBALS_Access is
   begin
        return PATH_GLOBALS.instance;
   end getInstance;

   procedure Initialize (This : in out PATH_GLOBALS'Class) is
      stringBuffer : StringMaker_Access;
      abPathData : AbPathData_Access;
   begin
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        abPathData := AbPathData_Package.getInstance;
        stringBuffer.append (To_Unbounded_String ("data"));
        stringBuffer.append (abPathData.SEPARATOR);
        This.DATA_PATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.DATA_PATH);
        stringBuffer.append (CommonStrings_Package.getInstance.INIT);
        stringBuffer.append (abPathData.SEPARATOR);
        This.INIT_PATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.DATA_PATH);
        stringBuffer.append (To_Unbounded_String ("log"));
        stringBuffer.append (abPathData.SEPARATOR);
        This.LOG_PATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.DATA_PATH);
        stringBuffer.append (To_Unbounded_String ("backup"));
        stringBuffer.append (abPathData.SEPARATOR);
        This.BACKUP_PATH := stringBuffer.toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringBuffer.append (This.INIT_PATH);
        stringBuffer.append (To_Unbounded_String ("views"));
        stringBuffer.append (abPathData.SEPARATOR);
        This.VIEWS_PATH := stringBuffer.toString;
   end Initialize;

   function Create return PATH_GLOBALS_Access is
      This : constant PATH_GLOBALS_Access := new PATH_GLOBALS;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant PATH_GLOBALS_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := PATH_GLOBALS_Package.Create;

end org.allbinary.globals.PATH_GLOBALS_Package;


