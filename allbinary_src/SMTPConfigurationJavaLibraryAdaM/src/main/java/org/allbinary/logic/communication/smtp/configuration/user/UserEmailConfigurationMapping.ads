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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;

package org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type UserEmailConfigurationMapping is tagged;
   type UserEmailConfigurationMapping_Access is access all UserEmailConfigurationMapping'Class;
   type UserEmailConfigurationMapping_Access_Array is array (Natural range <>) of UserEmailConfigurationMapping_Access;
   type UserEmailConfigurationMapping_Access_Array_Access is access all UserEmailConfigurationMapping_Access_Array;

   type UserEmailConfigurationMapping is new TableMappingInterface with record
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserEmailConfigurationMapping'Class; userEmailConfigurationInterface : UserEmailConfigurationInterface_Access);
   function Create (userEmailConfigurationInterface : UserEmailConfigurationInterface_Access) return UserEmailConfigurationMapping_Access;
   function toHashMap (This : in out UserEmailConfigurationMapping) return HashMap_Access;
   procedure toHashMap (This : in out UserEmailConfigurationMapping);
   function getKey (This : in out UserEmailConfigurationMapping) return Java_Object_Access;
   procedure getKey (This : in out UserEmailConfigurationMapping);
   function toVector (This : in out UserEmailConfigurationMapping) return BasicArrayList_Access;
   procedure toVector (This : in out UserEmailConfigurationMapping);

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package;


