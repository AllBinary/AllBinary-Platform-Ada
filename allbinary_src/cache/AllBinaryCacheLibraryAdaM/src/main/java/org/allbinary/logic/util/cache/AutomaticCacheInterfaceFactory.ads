-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2007 AllBinary 
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
limited with org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;
package org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References is
   type AutomaticCacheInterfaceFactory_Access is access all org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package.AutomaticCacheInterfaceFactory'Class;
   type AutomaticCacheInterfaceFactory_Access_Array is array (Natural range <>) of AutomaticCacheInterfaceFactory_Access;
   type AutomaticCacheInterfaceFactory_Access_Array_Access is access all AutomaticCacheInterfaceFactory_Access_Array;
   type AutomaticCacheInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of AutomaticCacheInterfaceFactory_Access_Array_Access;
   type AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access is access all AutomaticCacheInterfaceFactory_Access_Array_Access_Array;
   type AutomaticCacheInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AutomaticCacheInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AutomaticCacheInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AutomaticCacheInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AutomaticCacheInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AutomaticCacheInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in AutomaticCacheInterfaceFactory_Access_Array_Object'Class then AutomaticCacheInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AutomaticCacheInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Object'Class then AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References;

with org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package;
with org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References;
limited with org.allbinary.logic.util.cache.CacheType_Package;
with org.allbinary.logic.util.cache.CacheType_Package_References;
limited with org.allbinary.logic.util.cache.CachePolicy_Package;
with org.allbinary.logic.util.cache.CachePolicy_Package_References;

package org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package is

   package Reference_Types is
   subtype AutomaticCacheInterface_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access;
   use type AutomaticCacheInterface_Access;
   subtype AutomaticCacheInterface_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array;
   use type AutomaticCacheInterface_Access_Array;
   subtype AutomaticCacheInterface_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access;
   use type AutomaticCacheInterface_Access_Array_Access;
   subtype AutomaticCacheInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array;
   use type AutomaticCacheInterface_Access_Array_Access_Array;
   subtype AutomaticCacheInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterface_Package_References.AutomaticCacheInterface_Access_Array_Access_Array_Access;
   use type AutomaticCacheInterface_Access_Array_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access;
   use type CacheableInterfaceFactoryInterface_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheableInterfaceFactoryInterface_Package_References.CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type CacheableInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype CacheType_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access;
   use type CacheType_Access;
   subtype CacheType_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array;
   use type CacheType_Access_Array;
   subtype CacheType_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access;
   use type CacheType_Access_Array_Access;
   subtype CacheType_Access_Array_Access_Array is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array;
   use type CacheType_Access_Array_Access_Array;
   subtype CacheType_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CacheType_Package_References.CacheType_Access_Array_Access_Array_Access;
   use type CacheType_Access_Array_Access_Array_Access;
   subtype CachePolicy_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access;
   use type CachePolicy_Access;
   subtype CachePolicy_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array;
   use type CachePolicy_Access_Array;
   subtype CachePolicy_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access;
   use type CachePolicy_Access_Array_Access;
   subtype CachePolicy_Access_Array_Access_Array is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array;
   use type CachePolicy_Access_Array_Access_Array;
   subtype CachePolicy_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.CachePolicy_Package_References.CachePolicy_Access_Array_Access_Array_Access;
   use type CachePolicy_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AutomaticCacheInterfaceFactory_Access is org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.AutomaticCacheInterfaceFactory_Access;
   function "=" (Left, Right : AutomaticCacheInterfaceFactory_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References."=";
   subtype AutomaticCacheInterfaceFactory_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.AutomaticCacheInterfaceFactory_Access_Array;
   function "=" (Left, Right : AutomaticCacheInterfaceFactory_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References."=";
   subtype AutomaticCacheInterfaceFactory_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.AutomaticCacheInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : AutomaticCacheInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References."=";
   function Java_Box (Value : AutomaticCacheInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_AutomaticCacheInterfaceFactory_Access_Array (Value : access Java_Object'Class) return AutomaticCacheInterfaceFactory_Access_Array_Access renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.Java_Unbox_AutomaticCacheInterfaceFactory_Access_Array;
   subtype AutomaticCacheInterfaceFactory_Access_Array_Access_Array is org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.AutomaticCacheInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AutomaticCacheInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References."=";
   subtype AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References."=";
   function Java_Box (Value : AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_AutomaticCacheInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AutomaticCacheInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package_References.Java_Unbox_AutomaticCacheInterfaceFactory_Access_Array_Access_Array;

   type AutomaticCacheInterfaceFactory is new Java_Object with null record;

   procedure Initialize (This : in out AutomaticCacheInterfaceFactory'Class);
   function Create return AutomaticCacheInterfaceFactory_Access;
   function getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class) return AutomaticCacheInterface_Access;
   procedure getInstance (cacheableInterfaceFactoryInterface_Param : access CacheableInterfaceFactoryInterface_Package.CacheableInterfaceFactoryInterface'Class; cacheType_Param : access CacheType_Package.CacheType'Class; cachePolicy_Param : access CachePolicy_Package.CachePolicy'Class);

end org.allbinary.logic.util.cache.AutomaticCacheInterfaceFactory_Package;


