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
limited with org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package;
package org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References is
   type TrackListenerInterface_Access is access all org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package.TrackListenerInterface'Class;
   type TrackListenerInterface_Access_Array is array (Natural range <>) of TrackListenerInterface_Access;
   type TrackListenerInterface_Access_Array_Access is access all TrackListenerInterface_Access_Array;
   type TrackListenerInterface_Access_Array_Access_Array is array (Natural range <>) of TrackListenerInterface_Access_Array_Access;
   type TrackListenerInterface_Access_Array_Access_Array_Access is access all TrackListenerInterface_Access_Array_Access_Array;
   type TrackListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in TrackListenerInterface_Access_Array_Object'Class then TrackListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TrackListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TrackListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TrackListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TrackListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TrackListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TrackListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TrackListenerInterface_Access_Array_Access_Array_Object'Class then TrackListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References;

with org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TrackListenerInterface is interface;
   subtype TrackListenerInterface_Access is org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.TrackListenerInterface_Access;
   function "=" (Left, Right : TrackListenerInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References."=";
   subtype TrackListenerInterface_Access_Array is org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.TrackListenerInterface_Access_Array;
   function "=" (Left, Right : TrackListenerInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References."=";
   subtype TrackListenerInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.TrackListenerInterface_Access_Array_Access;
   function "=" (Left, Right : TrackListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References."=";
   function Java_Box (Value : TrackListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.Java_Box;
   function Java_Unbox_TrackListenerInterface_Access_Array (Value : access Java_Object'Class) return TrackListenerInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.Java_Unbox_TrackListenerInterface_Access_Array;
   subtype TrackListenerInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.TrackListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TrackListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References."=";
   subtype TrackListenerInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.TrackListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TrackListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References."=";
   function Java_Box (Value : TrackListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.Java_Box;
   function Java_Unbox_TrackListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TrackListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package_References.Java_Unbox_TrackListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TrackListenerInterface (Value : TrackListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure finished (This : in out TrackListenerInterface; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is abstract;

end org.allbinary.media.graphics.geography.map.TrackListenerInterface_Package;


