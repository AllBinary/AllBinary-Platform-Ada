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


package body org.allbinary.logic.system.security.licensing.LockedUtil_Package is

   procedure Initialize_Fields (This : in out LockedUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LockedUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LockedUtil_Access is
      This : constant LockedUtil_Access := new LockedUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return LockedUtil_Access is
   begin
        return LockedUtil_Package.instance;
   end getInstance;

   function isLocked (This : in out LockedUtil) return Boolean is
   begin
        return False;
   end isLocked;

   function isLockedFeature (This : in out LockedUtil; lockableFeatrue : LockableFeature_Access) return Boolean is
   begin
        return False;
   end isLockedFeature;

   procedure getInstance is
      Java_Result : constant LockedUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure isLocked (This : in out LockedUtil) is
      Java_Result : constant Boolean := LockedUtil'Class (This).isLocked;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLocked;

   procedure isLockedFeature (This : in out LockedUtil; lockableFeatrue : LockableFeature_Access) is
      Java_Result : constant Boolean := LockedUtil'Class (This).isLockedFeature (lockableFeatrue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLockedFeature;

begin
   null;
   instance := LockedUtil_Package.Create;

end org.allbinary.logic.system.security.licensing.LockedUtil_Package;


