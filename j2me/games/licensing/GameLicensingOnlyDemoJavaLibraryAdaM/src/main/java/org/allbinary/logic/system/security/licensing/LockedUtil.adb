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


with org.allbinary.logic.system.security.licensing.LockableFeature_Package; use org.allbinary.logic.system.security.licensing.LockableFeature_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package_References;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package;

package body org.allbinary.logic.system.security.licensing.LockedUtil_Package is

   subtype LockableFeature_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access;
   function "=" (Left, Right : LockableFeature_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array;
   function "=" (Left, Right : LockableFeature_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access;
   function "=" (Left, Right : LockableFeature_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array;
   function "=" (Left, Right : LockableFeature_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
   subtype LockableFeature_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LockableFeature_Package_References.LockableFeature_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LockableFeature_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LockableFeature_Package_References."=";
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
      LockedUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LockedUtil_Access is
   begin
        return LockedUtil_Package.instance;
   end getInstance;

   function isLocked (This : in out LockedUtil) return Boolean is
   begin
        return True;
   end isLocked;

   function isLockedFeature (This : in out LockedUtil; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class) return Boolean is
      lockableFeatrue : constant LockableFeature_Access := LockableFeature_Access (lockableFeatrue_Param);
   begin
        return True;
   end isLockedFeature;

   procedure isLockedFeature (This : in out LockedUtil; lockableFeatrue_Param : access LockableFeature_Package.LockableFeature'Class) is
      Java_Result : constant Boolean := LockedUtil'Class (This).isLockedFeature (lockableFeatrue_Param => lockableFeatrue_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isLockedFeature;

begin
   null;
   instance := LockedUtil_Package.Create;

end org.allbinary.logic.system.security.licensing.LockedUtil_Package;


