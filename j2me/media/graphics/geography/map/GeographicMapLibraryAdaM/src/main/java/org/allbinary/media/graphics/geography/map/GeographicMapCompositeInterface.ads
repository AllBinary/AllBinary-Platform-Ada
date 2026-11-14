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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References is
   type GeographicMapCompositeInterface_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package.GeographicMapCompositeInterface'Class;
   type GeographicMapCompositeInterface_Access_Array is array (Natural range <>) of GeographicMapCompositeInterface_Access;
   type GeographicMapCompositeInterface_Access_Array_Access is access all GeographicMapCompositeInterface_Access_Array;
   type GeographicMapCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCompositeInterface_Access_Array_Access;
   type GeographicMapCompositeInterface_Access_Array_Access_Array_Access is access all GeographicMapCompositeInterface_Access_Array_Access_Array;
   type GeographicMapCompositeInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCompositeInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCompositeInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCompositeInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCompositeInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCompositeInterface_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCompositeInterface_Access_Array_Object'Class then GeographicMapCompositeInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCompositeInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCompositeInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCompositeInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCompositeInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCompositeInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCompositeInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCompositeInterface_Access_Array_Access_Array_Object'Class then GeographicMapCompositeInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package is

   package Reference_Types is
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
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


   type GeographicMapCompositeInterface is interface;
   subtype GeographicMapCompositeInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.GeographicMapCompositeInterface_Access;
   function "=" (Left, Right : GeographicMapCompositeInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References."=";
   subtype GeographicMapCompositeInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.GeographicMapCompositeInterface_Access_Array;
   function "=" (Left, Right : GeographicMapCompositeInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References."=";
   subtype GeographicMapCompositeInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.GeographicMapCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References."=";
   function Java_Box (Value : GeographicMapCompositeInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCompositeInterface_Access_Array (Value : access Java_Object'Class) return GeographicMapCompositeInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.Java_Unbox_GeographicMapCompositeInterface_Access_Array;
   subtype GeographicMapCompositeInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.GeographicMapCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References."=";
   subtype GeographicMapCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.GeographicMapCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References."=";
   function Java_Box (Value : GeographicMapCompositeInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCompositeInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCompositeInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package_References.Java_Unbox_GeographicMapCompositeInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GeographicMapCompositeInterface (Value : GeographicMapCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function geographicMapCellTypeArray (This : in out GeographicMapCompositeInterface) return GeographicMapCellType_Access_Array_Access is abstract;
   function getGeographicMapInterface (This : in out GeographicMapCompositeInterface) return BasicGeographicMap_Access_Array_Access is abstract;
   procedure setGeographicMapInterface (This : in out GeographicMapCompositeInterface; geographicMapInterface : BasicGeographicMap_Access_Array_Access) is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;


