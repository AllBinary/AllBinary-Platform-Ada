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


package body org.allbinary.logic.system.security.licensing.LicenseUtil_Package is

   procedure Initialize_Fields (This : in out LicenseUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseUtil_Access is
      This : constant LicenseUtil_Access := new LicenseUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LicenseUtil_Access is
   begin
        return LicenseUtil_Package.instance;
   end getInstance;

   procedure init (This : in out LicenseUtil) is
   begin
        null;
   end init;

   function isRunning (This : in out LicenseUtil) return Boolean is
   begin
        return False;
   end isRunning;

   procedure setRunning (This : in out LicenseUtil; running : Boolean) is
   begin
        null;
   end setRunning;

   function shouldWait (This : in out LicenseUtil; commandListener : CommandListener_Access) return Boolean is
   begin
        return This.isRunning;
   end shouldWait;

   procedure getInstance is
      Java_Result : constant LicenseUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isRunning (This : in out LicenseUtil) is
      Java_Result : constant Boolean := LicenseUtil'Class (This).isRunning;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isRunning;

   procedure shouldWait (This : in out LicenseUtil; commandListener : CommandListener_Access) is
      Java_Result : constant Boolean := LicenseUtil'Class (This).shouldWait (commandListener);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldWait;

begin
   null;
   instance := LicenseUtil_Package.Create;

end org.allbinary.logic.system.security.licensing.LicenseUtil_Package;


