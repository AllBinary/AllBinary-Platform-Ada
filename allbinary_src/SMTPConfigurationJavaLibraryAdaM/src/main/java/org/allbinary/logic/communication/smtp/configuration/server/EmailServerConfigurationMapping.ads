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

package org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package TableMappingInterface_Package renames org.allbinary.data.tables.TableMappingInterface_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;

   type EmailServerConfigurationMapping is tagged;
   type EmailServerConfigurationMapping_Access is access all EmailServerConfigurationMapping'Class;
   type EmailServerConfigurationMapping_Access_Array is array (Natural range <>) of EmailServerConfigurationMapping_Access;
   type EmailServerConfigurationMapping_Access_Array_Access is access all EmailServerConfigurationMapping_Access_Array;

   type EmailServerConfigurationMapping is new TableMappingInterface with record
      emailServerConfigurationInterface : EmailServerConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out EmailServerConfigurationMapping'Class; emailServerConfigurationInterface : EmailServerConfigurationInterface_Access);
   function Create (emailServerConfigurationInterface : EmailServerConfigurationInterface_Access) return EmailServerConfigurationMapping_Access;
   function toHashMap (This : in out EmailServerConfigurationMapping) return HashMap_Access;
   procedure toHashMap (This : in out EmailServerConfigurationMapping);
   function getKey (This : in out EmailServerConfigurationMapping) return Java_Object_Access;
   procedure getKey (This : in out EmailServerConfigurationMapping);
   function toVector (This : in out EmailServerConfigurationMapping) return BasicArrayList_Access;
   procedure toVector (This : in out EmailServerConfigurationMapping);

end org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationMapping_Package;


