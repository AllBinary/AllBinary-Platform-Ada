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


package body org.allbinary.game.midlet.LicenseLevelUtil_Package is

   procedure Initialize_Fields (This : in out LicenseLevelUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseLevelUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseLevelUtil_Access is
      This : constant LicenseLevelUtil_Access := new LicenseLevelUtil;
   begin
      LicenseLevelUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LicenseLevelUtil_Access is
   begin
        return LicenseLevelUtil_Package.instance;
   end getInstance;

   function getMaxLevel (This : in out LicenseLevelUtil; maxLevel : Integer; demoLevel : Integer) return Integer is
   begin
        return demoLevel;
   end getMaxLevel;

   procedure getMaxLevel (This : in out LicenseLevelUtil; maxLevel : Integer; demoLevel : Integer) is
      Java_Result : constant Integer := LicenseLevelUtil'Class (This).getMaxLevel (maxLevel, demoLevel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMaxLevel;

begin
   null;
   instance := LicenseLevelUtil_Package.Create;

end org.allbinary.game.midlet.LicenseLevelUtil_Package;


