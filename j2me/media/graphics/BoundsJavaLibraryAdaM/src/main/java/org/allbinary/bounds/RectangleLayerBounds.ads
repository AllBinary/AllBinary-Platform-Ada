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
limited with org.allbinary.bounds.RectangleLayerBounds_Package;
package org.allbinary.bounds.RectangleLayerBounds_Package_References is
   type RectangleLayerBounds_Access is access all org.allbinary.bounds.RectangleLayerBounds_Package.RectangleLayerBounds'Class;
   type RectangleLayerBounds_Access_Array is array (Natural range <>) of RectangleLayerBounds_Access;
   type RectangleLayerBounds_Access_Array_Access is access all RectangleLayerBounds_Access_Array;
   type RectangleLayerBounds_Access_Array_Access_Array is array (Natural range <>) of RectangleLayerBounds_Access_Array_Access;
   type RectangleLayerBounds_Access_Array_Access_Array_Access is access all RectangleLayerBounds_Access_Array_Access_Array;
   type RectangleLayerBounds_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleLayerBounds_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleLayerBounds_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleLayerBounds_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleLayerBounds_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleLayerBounds_Access_Array_Access is (if Value /= null and then Value.all in RectangleLayerBounds_Access_Array_Object'Class then RectangleLayerBounds_Access_Array_Object'Class (Value.all).Value else null);
   type RectangleLayerBounds_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RectangleLayerBounds_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RectangleLayerBounds_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RectangleLayerBounds_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RectangleLayerBounds_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RectangleLayerBounds_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RectangleLayerBounds_Access_Array_Access_Array_Object'Class then RectangleLayerBounds_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.bounds.RectangleLayerBounds_Package_References;

with org.allbinary.bounds.RectangleLayerBounds_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
with org.allbinary.bounds.LayerBounds_Package; use org.allbinary.bounds.LayerBounds_Package;
limited with org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package_References;

package org.allbinary.bounds.RectangleLayerBounds_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype BoundsVisitorInterface_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access;
   use type BoundsVisitorInterface_Access;
   subtype BoundsVisitorInterface_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array;
   use type BoundsVisitorInterface_Access_Array;
   subtype BoundsVisitorInterface_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access;
   use type BoundsVisitorInterface_Access_Array_Access;
   subtype BoundsVisitorInterface_Access_Array_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array;
   use type BoundsVisitorInterface_Access_Array_Access_Array;
   subtype BoundsVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array_Access;
   use type BoundsVisitorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RectangleLayerBounds_Access is org.allbinary.bounds.RectangleLayerBounds_Package_References.RectangleLayerBounds_Access;
   function "=" (Left, Right : RectangleLayerBounds_Access) return Boolean renames org.allbinary.bounds.RectangleLayerBounds_Package_References."=";
   subtype RectangleLayerBounds_Access_Array is org.allbinary.bounds.RectangleLayerBounds_Package_References.RectangleLayerBounds_Access_Array;
   function "=" (Left, Right : RectangleLayerBounds_Access_Array) return Boolean renames org.allbinary.bounds.RectangleLayerBounds_Package_References."=";
   subtype RectangleLayerBounds_Access_Array_Access is org.allbinary.bounds.RectangleLayerBounds_Package_References.RectangleLayerBounds_Access_Array_Access;
   function "=" (Left, Right : RectangleLayerBounds_Access_Array_Access) return Boolean renames org.allbinary.bounds.RectangleLayerBounds_Package_References."=";
   function Java_Box (Value : RectangleLayerBounds_Access_Array_Access) return Java_Object_Access renames org.allbinary.bounds.RectangleLayerBounds_Package_References.Java_Box;
   function Java_Unbox_RectangleLayerBounds_Access_Array (Value : access Java_Object'Class) return RectangleLayerBounds_Access_Array_Access renames org.allbinary.bounds.RectangleLayerBounds_Package_References.Java_Unbox_RectangleLayerBounds_Access_Array;
   subtype RectangleLayerBounds_Access_Array_Access_Array is org.allbinary.bounds.RectangleLayerBounds_Package_References.RectangleLayerBounds_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleLayerBounds_Access_Array_Access_Array) return Boolean renames org.allbinary.bounds.RectangleLayerBounds_Package_References."=";
   subtype RectangleLayerBounds_Access_Array_Access_Array_Access is org.allbinary.bounds.RectangleLayerBounds_Package_References.RectangleLayerBounds_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleLayerBounds_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.bounds.RectangleLayerBounds_Package_References."=";
   function Java_Box (Value : RectangleLayerBounds_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.bounds.RectangleLayerBounds_Package_References.Java_Box;
   function Java_Unbox_RectangleLayerBounds_Access_Array_Access_Array (Value : access Java_Object'Class) return RectangleLayerBounds_Access_Array_Access_Array_Access renames org.allbinary.bounds.RectangleLayerBounds_Package_References.Java_Unbox_RectangleLayerBounds_Access_Array_Access_Array;

   type RectangleLayerBounds is new LayerBounds with null record;

   procedure Initialize (This : in out RectangleLayerBounds'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (rectangle_Param : access Rectangle_Package.Rectangle'Class) return RectangleLayerBounds_Access;
   procedure visit (This : in out RectangleLayerBounds; boundsVisitorInterface_Param : access BoundsVisitorInterface_Package.BoundsVisitorInterface'Class);

end org.allbinary.bounds.RectangleLayerBounds_Package;


