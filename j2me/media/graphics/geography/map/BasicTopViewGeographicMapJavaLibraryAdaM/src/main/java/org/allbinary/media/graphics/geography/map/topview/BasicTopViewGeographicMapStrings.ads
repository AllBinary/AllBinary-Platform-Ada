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
limited with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package;
package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References is
   type BasicTopViewGeographicMapStrings_Access is access all org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package.BasicTopViewGeographicMapStrings'Class;
   type BasicTopViewGeographicMapStrings_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapStrings_Access;
   type BasicTopViewGeographicMapStrings_Access_Array_Access is access all BasicTopViewGeographicMapStrings_Access_Array;
   type BasicTopViewGeographicMapStrings_Access_Array_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapStrings_Access_Array_Access;
   type BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access is access all BasicTopViewGeographicMapStrings_Access_Array_Access_Array;
   type BasicTopViewGeographicMapStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTopViewGeographicMapStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTopViewGeographicMapStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTopViewGeographicMapStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTopViewGeographicMapStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTopViewGeographicMapStrings_Access_Array_Access is (if Value /= null and then Value.all in BasicTopViewGeographicMapStrings_Access_Array_Object'Class then BasicTopViewGeographicMapStrings_Access_Array_Object'Class (Value.all).Value else null);
   type BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTopViewGeographicMapStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Object'Class then BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References;

with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicTopViewGeographicMapStrings_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.BasicTopViewGeographicMapStrings_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapStrings_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References."=";
   subtype BasicTopViewGeographicMapStrings_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.BasicTopViewGeographicMapStrings_Access_Array;
   function "=" (Left, Right : BasicTopViewGeographicMapStrings_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References."=";
   subtype BasicTopViewGeographicMapStrings_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.BasicTopViewGeographicMapStrings_Access_Array_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapStrings_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References."=";
   function Java_Box (Value : BasicTopViewGeographicMapStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.Java_Box;
   function Java_Unbox_BasicTopViewGeographicMapStrings_Access_Array (Value : access Java_Object'Class) return BasicTopViewGeographicMapStrings_Access_Array_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.Java_Unbox_BasicTopViewGeographicMapStrings_Access_Array;
   subtype BasicTopViewGeographicMapStrings_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.BasicTopViewGeographicMapStrings_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTopViewGeographicMapStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References."=";
   subtype BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References."=";
   function Java_Box (Value : BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.Java_Box;
   function Java_Unbox_BasicTopViewGeographicMapStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicTopViewGeographicMapStrings_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package_References.Java_Unbox_BasicTopViewGeographicMapStrings_Access_Array_Access_Array;

   type BasicTopViewGeographicMapStrings is new Java_Object with record
      DEFAULT : Unbounded_String;
      OTHER : Unbounded_String;
      WALL : Unbounded_String;
      OFF_MAP : Unbounded_String;
      FLOOR : Unbounded_String;
      DOOR : Unbounded_String;
      STAIRS_UP : Unbounded_String;
      STAIRS_DOWN : Unbounded_String;
   end record;
   instance : BasicTopViewGeographicMapStrings_Access;

   procedure Initialize (This : in out BasicTopViewGeographicMapStrings'Class);
   function Create return BasicTopViewGeographicMapStrings_Access;
   function getInstance return BasicTopViewGeographicMapStrings_Access;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package;


