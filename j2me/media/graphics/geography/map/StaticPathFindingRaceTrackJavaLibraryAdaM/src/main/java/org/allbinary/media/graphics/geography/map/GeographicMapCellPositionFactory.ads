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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References is
   type GeographicMapCellPositionFactory_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package.GeographicMapCellPositionFactory'Class;
   type GeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactory_Access;
   type GeographicMapCellPositionFactory_Access_Array_Access is access all GeographicMapCellPositionFactory_Access_Array;
   type GeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactory_Access_Array_Access;
   type GeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all GeographicMapCellPositionFactory_Access_Array_Access_Array;
   type GeographicMapCellPositionFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionFactory_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionFactory_Access_Array_Object'Class then GeographicMapCellPositionFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPositionFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionFactory_Access_Array_Access_Array_Object'Class then GeographicMapCellPositionFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References;
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
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access;
   use type BasicGeographicMapCellPositionFactory_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   use type BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.GeographicMapCellPositionFactory_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References."=";
   subtype GeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.GeographicMapCellPositionFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References."=";
   subtype GeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.GeographicMapCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionFactory_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.Java_Unbox_GeographicMapCellPositionFactory_Access_Array;
   subtype GeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.GeographicMapCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References."=";
   subtype GeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.GeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package_References.Java_Unbox_GeographicMapCellPositionFactory_Access_Array_Access_Array;

   type GeographicMapCellPositionFactory is new GeographicMapCellPositionBaseFactory with record
      logUtil : LogUtil_Access;
   end record;
   hashtable : ABHashtable_Access;

   procedure Initialize (This : in out GeographicMapCellPositionFactory'Class);
   function Create return GeographicMapCellPositionFactory_Access;
   function getInstance (This : in out GeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return BasicGeographicMapCellPositionFactory_Access;
   procedure getInstance (This : in out GeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function getHashtable return ABHashtable_Access;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package;


