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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References is
   type GeographicMapCellPositionFactoryInterface_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class;
   type GeographicMapCellPositionFactoryInterface_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactoryInterface_Access;
   type GeographicMapCellPositionFactoryInterface_Access_Array_Access is access all GeographicMapCellPositionFactoryInterface_Access_Array;
   type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is access all GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   type GeographicMapCellPositionFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionFactoryInterface_Access_Array_Object'Class then GeographicMapCellPositionFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Object'Class then GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package is

   package Reference_Types is
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
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


   type GeographicMapCellPositionFactoryInterface is interface;
   subtype GeographicMapCellPositionFactoryInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionFactoryInterface_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionFactoryInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.Java_Unbox_GeographicMapCellPositionFactoryInterface_Access_Array;
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   function Java_Box (Value : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.Java_Unbox_GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GeographicMapCellPositionFactoryInterface (Value : GeographicMapCellPositionFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out GeographicMapCellPositionFactoryInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access is abstract;
   procedure getInstance (This : in out GeographicMapCellPositionFactoryInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) is abstract;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;


