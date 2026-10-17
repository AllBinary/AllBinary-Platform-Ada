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
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationData_Package; use org.allbinary.business.context.configuration.ContextConfigurationData_Package;

package org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type ContextConfigurationTableMapping is tagged;
   type ContextConfigurationTableMapping_Access is access all ContextConfigurationTableMapping'Class;
   type ContextConfigurationTableMapping_Access_Array is array (Natural range <>) of ContextConfigurationTableMapping_Access;
   type ContextConfigurationTableMapping_Access_Array_Access is access all ContextConfigurationTableMapping_Access_Array;

   type ContextConfigurationTableMapping is new TableMappingInterface with record
      contextConfigurationInterface : ContextConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfigurationTableMapping'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface'Class);
   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface'Class) return ContextConfigurationTableMapping_Access;
   function toHashMap (This : in out ContextConfigurationTableMapping) return HashMap_Access;
   function getKey (This : in out ContextConfigurationTableMapping) return Java_Object_Access;
   function toVector (This : in out ContextConfigurationTableMapping) return BasicArrayList_Access;

end org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package;


