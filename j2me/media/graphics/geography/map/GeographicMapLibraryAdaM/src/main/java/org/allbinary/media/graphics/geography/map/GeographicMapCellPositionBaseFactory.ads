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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References is
   type GeographicMapCellPositionBaseFactory_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class;
   type GeographicMapCellPositionBaseFactory_Access_Array is array (Natural range <>) of GeographicMapCellPositionBaseFactory_Access;
   type GeographicMapCellPositionBaseFactory_Access_Array_Access is access all GeographicMapCellPositionBaseFactory_Access_Array;
   type GeographicMapCellPositionBaseFactory_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionBaseFactory_Access_Array_Access;
   type GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access is access all GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   type GeographicMapCellPositionBaseFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionBaseFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionBaseFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionBaseFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionBaseFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionBaseFactory_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionBaseFactory_Access_Array_Object'Class then GeographicMapCellPositionBaseFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionBaseFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Object'Class then GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package is

   package Reference_Types is
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


   subtype GeographicMapCellPositionBaseFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionBaseFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionBaseFactory_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionBaseFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.Java_Unbox_GeographicMapCellPositionBaseFactory_Access_Array;
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionBaseFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.Java_Unbox_GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;

   type GeographicMapCellPositionBaseFactory is new Java_Object with null record;

   procedure Initialize (This : in out GeographicMapCellPositionBaseFactory'Class);
   function Create return GeographicMapCellPositionBaseFactory_Access;
   function getInstance (This : in out GeographicMapCellPositionBaseFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return BasicGeographicMapCellPositionFactory_Access;
   procedure getInstance (This : in out GeographicMapCellPositionBaseFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;


