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


package body org.allbinary.logic.system.os.SystemProperties_Package is

   procedure Initialize_Fields (This : in out SystemProperties'Class) is
   begin
      null;
      This.OS_NAME := To_Unbounded_String ("os.name");
      This.OS_ARCH := To_Unbounded_String ("os.arch");
      This.OS_VERSION := To_Unbounded_String ("os.version");
   end Initialize_Fields;


   function getInstance return SystemProperties_Access is
   begin
        return SystemProperties_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SystemProperties'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SystemProperties_Access is
      This : constant SystemProperties_Access := new SystemProperties;
   begin
      SystemProperties_Package.Initialize (This.all);
      return This;
   end Create;

   function getName (This : in out SystemProperties) return Unbounded_String is
   begin
        return Java_Get_Property (This.OS_NAME);
   end getName;

   function getArch (This : in out SystemProperties) return Unbounded_String is
   begin
        return Java_Get_Property (This.OS_ARCH);
   end getArch;

   function getVersion (This : in out SystemProperties) return Unbounded_String is
   begin
        return Java_Get_Property (This.OS_VERSION);
   end getVersion;

   function getUserHomePath (This : in out SystemProperties) return Unbounded_String is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getUserHomePath;

begin
   null;
   instance := SystemProperties_Package.Create;

end org.allbinary.logic.system.os.SystemProperties_Package;


