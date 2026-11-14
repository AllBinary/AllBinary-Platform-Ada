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
limited with org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package;
package org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References is
   type GenericTrackingLayerCircularStaticPool_Access is access all org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package.GenericTrackingLayerCircularStaticPool'Class;
   type GenericTrackingLayerCircularStaticPool_Access_Array is array (Natural range <>) of GenericTrackingLayerCircularStaticPool_Access;
   type GenericTrackingLayerCircularStaticPool_Access_Array_Access is access all GenericTrackingLayerCircularStaticPool_Access_Array;
   type GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of GenericTrackingLayerCircularStaticPool_Access_Array_Access;
   type GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access is access all GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array;
   type GenericTrackingLayerCircularStaticPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericTrackingLayerCircularStaticPool_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericTrackingLayerCircularStaticPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericTrackingLayerCircularStaticPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericTrackingLayerCircularStaticPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericTrackingLayerCircularStaticPool_Access_Array_Access is (if Value /= null and then Value.all in GenericTrackingLayerCircularStaticPool_Access_Array_Object'Class then GenericTrackingLayerCircularStaticPool_Access_Array_Object'Class (Value.all).Value else null);
   type GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Object'Class then GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References;

with org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;

package org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package is

   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GenericTrackingLayerCircularStaticPool_Access is org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.GenericTrackingLayerCircularStaticPool_Access;
   function "=" (Left, Right : GenericTrackingLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References."=";
   subtype GenericTrackingLayerCircularStaticPool_Access_Array is org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.GenericTrackingLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : GenericTrackingLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References."=";
   subtype GenericTrackingLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.GenericTrackingLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : GenericTrackingLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : GenericTrackingLayerCircularStaticPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_GenericTrackingLayerCircularStaticPool_Access_Array (Value : access Java_Object'Class) return GenericTrackingLayerCircularStaticPool_Access_Array_Access renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.Java_Unbox_GenericTrackingLayerCircularStaticPool_Access_Array;
   subtype GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References."=";
   subtype GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array (Value : access Java_Object'Class) return GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array_Access renames org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package_References.Java_Unbox_GenericTrackingLayerCircularStaticPool_Access_Array_Access_Array;

   type GenericTrackingLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;
   SINGLETON : GenericTrackingLayerCircularStaticPool_Access;

   procedure Initialize (This : in out GenericTrackingLayerCircularStaticPool'Class);
   function Create return GenericTrackingLayerCircularStaticPool_Access;
   function getInstance return GenericTrackingLayerCircularStaticPool_Access;

end org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package;


