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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References is
   type GeographicMapCellType_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package.GeographicMapCellType'Class;
   type GeographicMapCellType_Access_Array is array (Natural range <>) of GeographicMapCellType_Access;
   type GeographicMapCellType_Access_Array_Access is access all GeographicMapCellType_Access_Array;
   type GeographicMapCellType_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellType_Access_Array_Access;
   type GeographicMapCellType_Access_Array_Access_Array_Access is access all GeographicMapCellType_Access_Array_Access_Array;
   type GeographicMapCellType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellType_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellType_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellType_Access_Array_Object'Class then GeographicMapCellType_Access_Array_Object'Class (Value.all).Value else null);
   type GeographicMapCellType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GeographicMapCellType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GeographicMapCellType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GeographicMapCellType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GeographicMapCellType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GeographicMapCellType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GeographicMapCellType_Access_Array_Access_Array_Object'Class then GeographicMapCellType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
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

package org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   function "=" (Left, Right : GeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   function Java_Box (Value : GeographicMapCellType_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellType_Access_Array (Value : access Java_Object'Class) return GeographicMapCellType_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.Java_Unbox_GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   function Java_Box (Value : GeographicMapCellType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.Java_Box;
   function Java_Unbox_GeographicMapCellType_Access_Array_Access_Array (Value : access Java_Object'Class) return GeographicMapCellType_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.Java_Unbox_GeographicMapCellType_Access_Array_Access_Array;

   type GeographicMapCellType is new Java_Object with record
      logUtil : LogUtil_Access;
      type_Id : Integer;
   end record;
   NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY : GeographicMapCellType_Access_Array_Access;
   NULL_GEOGRAPHIC_MAP_CELL_TYPE : GeographicMapCellType_Access;

   procedure Initialize (This : in out GeographicMapCellType'Class; type_Id : Integer; reset : Integer);
   function Create (type_Id : Integer; reset : Integer) return GeographicMapCellType_Access;
   function getType (This : in out GeographicMapCellType) return Integer;
   function toString (This : in out GeographicMapCellType) return Unbounded_String;

end org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;


