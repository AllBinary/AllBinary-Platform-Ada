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

limited with org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package;
package org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References is
   type ContextConfigurationTableMapping_Access is access all org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package.ContextConfigurationTableMapping'Class;
   type ContextConfigurationTableMapping_Access_Array is array (Natural range <>) of ContextConfigurationTableMapping_Access;
   type ContextConfigurationTableMapping_Access_Array_Access is access all ContextConfigurationTableMapping_Access_Array;
   type ContextConfigurationTableMapping_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationTableMapping_Access_Array_Access;
   type ContextConfigurationTableMapping_Access_Array_Access_Array_Access is access all ContextConfigurationTableMapping_Access_Array_Access_Array;
end org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References;

with org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
limited with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;

package org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype ContextConfigurationInterface_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access;
   use type ContextConfigurationInterface_Access;
   subtype ContextConfigurationInterface_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array;
   use type ContextConfigurationInterface_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access;
   subtype ContextConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array;
   use type ContextConfigurationInterface_Access_Array_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ContextConfigurationTableMapping_Access is org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References.ContextConfigurationTableMapping_Access;
   function "=" (Left, Right : ContextConfigurationTableMapping_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References."=";
   subtype ContextConfigurationTableMapping_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References.ContextConfigurationTableMapping_Access_Array;
   function "=" (Left, Right : ContextConfigurationTableMapping_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References."=";
   subtype ContextConfigurationTableMapping_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References.ContextConfigurationTableMapping_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationTableMapping_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References."=";
   subtype ContextConfigurationTableMapping_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References.ContextConfigurationTableMapping_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationTableMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References."=";
   subtype ContextConfigurationTableMapping_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References.ContextConfigurationTableMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationTableMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package_References."=";

   type ContextConfigurationTableMapping is new Java_Object and TableMappingInterface with record
      contextConfigurationInterface : ContextConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfigurationTableMapping'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class);
   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) return ContextConfigurationTableMapping_Access;
   function toHashMap (This : in out ContextConfigurationTableMapping) return HashMap_Access;
   function getKey (This : in out ContextConfigurationTableMapping) return Java_Object_Access;
   function toVector (This : in out ContextConfigurationTableMapping) return BasicArrayList_Access;

end org.allbinary.business.context.configuration.ContextConfigurationTableMapping_Package;


