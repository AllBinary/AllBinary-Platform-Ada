-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package;
package org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References is
   type CurrentGeographicMapCellPositionInterface_Access is access all org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package.CurrentGeographicMapCellPositionInterface'Class;
   type CurrentGeographicMapCellPositionInterface_Access_Array is array (Natural range <>) of CurrentGeographicMapCellPositionInterface_Access;
   type CurrentGeographicMapCellPositionInterface_Access_Array_Access is access all CurrentGeographicMapCellPositionInterface_Access_Array;
   type CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array is array (Natural range <>) of CurrentGeographicMapCellPositionInterface_Access_Array_Access;
   type CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access is access all CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array;
   type CurrentGeographicMapCellPositionInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CurrentGeographicMapCellPositionInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : CurrentGeographicMapCellPositionInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CurrentGeographicMapCellPositionInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CurrentGeographicMapCellPositionInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CurrentGeographicMapCellPositionInterface_Access_Array_Access is (if Value /= null and then Value.all in CurrentGeographicMapCellPositionInterface_Access_Array_Object'Class then CurrentGeographicMapCellPositionInterface_Access_Array_Object'Class (Value.all).Value else null);
   type CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Object'Class then CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References;

with org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References;
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

package org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package is

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
   end Reference_Types;
   use Reference_Types;


   type CurrentGeographicMapCellPositionInterface is interface;
   subtype CurrentGeographicMapCellPositionInterface_Access is org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.CurrentGeographicMapCellPositionInterface_Access;
   function "=" (Left, Right : CurrentGeographicMapCellPositionInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References."=";
   subtype CurrentGeographicMapCellPositionInterface_Access_Array is org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.CurrentGeographicMapCellPositionInterface_Access_Array;
   function "=" (Left, Right : CurrentGeographicMapCellPositionInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References."=";
   subtype CurrentGeographicMapCellPositionInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.CurrentGeographicMapCellPositionInterface_Access_Array_Access;
   function "=" (Left, Right : CurrentGeographicMapCellPositionInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References."=";
   function Java_Box (Value : CurrentGeographicMapCellPositionInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.Java_Box;
   function Java_Unbox_CurrentGeographicMapCellPositionInterface_Access_Array (Value : access Java_Object'Class) return CurrentGeographicMapCellPositionInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.Java_Unbox_CurrentGeographicMapCellPositionInterface_Access_Array;
   subtype CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References."=";
   subtype CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References."=";
   function Java_Box (Value : CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.Java_Box;
   function Java_Unbox_CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package_References.Java_Unbox_CurrentGeographicMapCellPositionInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_CurrentGeographicMapCellPositionInterface (Value : CurrentGeographicMapCellPositionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getCurrentGeographicMapCellPosition (This : in out CurrentGeographicMapCellPositionInterface) return GeographicMapCellPosition_Access is abstract;

end org.allbinary.media.graphics.geography.map.CurrentGeographicMapCellPositionInterface_Package;


