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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package is


   type PermissionItemData is tagged;
   type PermissionItemData_Access is access all PermissionItemData'Class;
   type PermissionItemData_Access_Array is array (Natural range <>) of PermissionItemData_Access;
   type PermissionItemData_Access_Array_Access is access all PermissionItemData_Access_Array;

   type PermissionItemData is new Java_Object with null record;
   WHO : Unbounded_String;
   WHAT : Unbounded_String;
   TYPE_Id : Unbounded_String;
   START_TIME : Unbounded_String;
   END_TIME : Unbounded_String;
   REMOTE_ADDR : Unbounded_String;

   procedure Initialize (This : in out PermissionItemData'Class);
   function Create return PermissionItemData_Access;

end org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData_Package;


