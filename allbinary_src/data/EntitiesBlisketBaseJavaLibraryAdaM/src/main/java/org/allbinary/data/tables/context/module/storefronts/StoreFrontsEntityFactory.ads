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

with AllBinary_Java;
limited with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;
package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References is
   type StoreFrontsEntityFactory_Access is access all org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package.StoreFrontsEntityFactory'Class;
   type StoreFrontsEntityFactory_Access_Array is array (Natural range <>) of StoreFrontsEntityFactory_Access;
   type StoreFrontsEntityFactory_Access_Array_Access is access all StoreFrontsEntityFactory_Access_Array;
   type StoreFrontsEntityFactory_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsEntityFactory_Access_Array_Access;
   type StoreFrontsEntityFactory_Access_Array_Access_Array_Access is access all StoreFrontsEntityFactory_Access_Array_Access_Array;
   type StoreFrontsEntityFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontsEntityFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontsEntityFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontsEntityFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontsEntityFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontsEntityFactory_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontsEntityFactory_Access_Array_Object'Class then StoreFrontsEntityFactory_Access_Array_Object'Class (Value.all).Value else null);
   type StoreFrontsEntityFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreFrontsEntityFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreFrontsEntityFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreFrontsEntityFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreFrontsEntityFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreFrontsEntityFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreFrontsEntityFactory_Access_Array_Access_Array_Object'Class then StoreFrontsEntityFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References;

with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package;
with org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References;

package org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype StoreFrontsEntity_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access;
   use type StoreFrontsEntity_Access;
   subtype StoreFrontsEntity_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array;
   use type StoreFrontsEntity_Access_Array;
   subtype StoreFrontsEntity_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access;
   use type StoreFrontsEntity_Access_Array_Access;
   subtype StoreFrontsEntity_Access_Array_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array;
   use type StoreFrontsEntity_Access_Array_Access_Array;
   subtype StoreFrontsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity_Package_References.StoreFrontsEntity_Access_Array_Access_Array_Access;
   use type StoreFrontsEntity_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontsEntityFactory_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.StoreFrontsEntityFactory_Access;
   function "=" (Left, Right : StoreFrontsEntityFactory_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References."=";
   subtype StoreFrontsEntityFactory_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.StoreFrontsEntityFactory_Access_Array;
   function "=" (Left, Right : StoreFrontsEntityFactory_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References."=";
   subtype StoreFrontsEntityFactory_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.StoreFrontsEntityFactory_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntityFactory_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References."=";
   function Java_Box (Value : StoreFrontsEntityFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.Java_Box;
   function Java_Unbox_StoreFrontsEntityFactory_Access_Array (Value : access Java_Object'Class) return StoreFrontsEntityFactory_Access_Array_Access renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.Java_Unbox_StoreFrontsEntityFactory_Access_Array;
   subtype StoreFrontsEntityFactory_Access_Array_Access_Array is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.StoreFrontsEntityFactory_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontsEntityFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References."=";
   subtype StoreFrontsEntityFactory_Access_Array_Access_Array_Access is org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.StoreFrontsEntityFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontsEntityFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References."=";
   function Java_Box (Value : StoreFrontsEntityFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.Java_Box;
   function Java_Unbox_StoreFrontsEntityFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreFrontsEntityFactory_Access_Array_Access_Array_Access renames org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package_References.Java_Unbox_StoreFrontsEntityFactory_Access_Array_Access_Array;

   type StoreFrontsEntityFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StoreFrontsEntityFactory_Access;

   procedure Initialize (This : in out StoreFrontsEntityFactory'Class);
   function Create return StoreFrontsEntityFactory_Access;
   function getInstance return StoreFrontsEntityFactory_Access;
   function getStoreFrontsEntityInstance (This : in out StoreFrontsEntityFactory) return StoreFrontsEntity_Access;

end org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory_Package;


