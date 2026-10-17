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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.role.BasicUserRoleFactory_Package; use org.allbinary.business.user.role.BasicUserRoleFactory_Package;

package org.allbinary.business.user.role.StoreRoleFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type StoreRoleFactory is tagged;
   type StoreRoleFactory_Access is access all StoreRoleFactory'Class;
   type StoreRoleFactory_Access_Array is array (Natural range <>) of StoreRoleFactory_Access;
   type StoreRoleFactory_Access_Array_Access is access all StoreRoleFactory_Access_Array;

   type StoreRoleFactory is new Java_Object with record
      roles : BasicArrayList_Access;
      subscriberRoles : BasicArrayList_Access;
      wholesaleRoles : BasicArrayList_Access;
   end record;
   instance : StoreRoleFactory_Access;

   procedure Initialize (This : in out StoreRoleFactory'Class);
   function Create return StoreRoleFactory_Access;
   function getInstance return StoreRoleFactory_Access;
   function getRoles (This : in out StoreRoleFactory) return BasicArrayList_Access;
   function getSubscriberRoles (This : in out StoreRoleFactory) return BasicArrayList_Access;
   function getWholesaleRoles (This : in out StoreRoleFactory) return BasicArrayList_Access;

end org.allbinary.business.user.role.StoreRoleFactory_Package;


