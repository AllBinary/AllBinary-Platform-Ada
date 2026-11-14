-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;
package org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References is
   type MultiGeographicMapBehavior_Access is access all org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package.MultiGeographicMapBehavior'Class;
   type MultiGeographicMapBehavior_Access_Array is array (Natural range <>) of MultiGeographicMapBehavior_Access;
   type MultiGeographicMapBehavior_Access_Array_Access is access all MultiGeographicMapBehavior_Access_Array;
   type MultiGeographicMapBehavior_Access_Array_Access_Array is array (Natural range <>) of MultiGeographicMapBehavior_Access_Array_Access;
   type MultiGeographicMapBehavior_Access_Array_Access_Array_Access is access all MultiGeographicMapBehavior_Access_Array_Access_Array;
   type MultiGeographicMapBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiGeographicMapBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiGeographicMapBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiGeographicMapBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiGeographicMapBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiGeographicMapBehavior_Access_Array_Access is (if Value /= null and then Value.all in MultiGeographicMapBehavior_Access_Array_Object'Class then MultiGeographicMapBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type MultiGeographicMapBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiGeographicMapBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiGeographicMapBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiGeographicMapBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiGeographicMapBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiGeographicMapBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MultiGeographicMapBehavior_Access_Array_Access_Array_Object'Class then MultiGeographicMapBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References;

with org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype MultiGeographicMapBehavior_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype MultiGeographicMapBehavior_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype MultiGeographicMapBehavior_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   function Java_Box (Value : MultiGeographicMapBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.Java_Box;
   function Java_Unbox_MultiGeographicMapBehavior_Access_Array (Value : access Java_Object'Class) return MultiGeographicMapBehavior_Access_Array_Access renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.Java_Unbox_MultiGeographicMapBehavior_Access_Array;
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   subtype MultiGeographicMapBehavior_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.MultiGeographicMapBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiGeographicMapBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References."=";
   function Java_Box (Value : MultiGeographicMapBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.Java_Box;
   function Java_Unbox_MultiGeographicMapBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return MultiGeographicMapBehavior_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package_References.Java_Unbox_MultiGeographicMapBehavior_Access_Array_Access_Array;

   type MultiGeographicMapBehavior is new Java_Object with null record;

   procedure Initialize (This : in out MultiGeographicMapBehavior'Class);
   function Create return MultiGeographicMapBehavior_Access;
   function getCellTypeAt (This : in out MultiGeographicMapBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellType_Access_Array_Access;
   procedure getCellTypeAt (This : in out MultiGeographicMapBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior_Package;


