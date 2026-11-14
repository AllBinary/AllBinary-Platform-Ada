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
limited with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
package org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References is
   type AllBinaryGameCanvasInterface_Access is access all org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package.AllBinaryGameCanvasInterface'Class;
   type AllBinaryGameCanvasInterface_Access_Array is array (Natural range <>) of AllBinaryGameCanvasInterface_Access;
   type AllBinaryGameCanvasInterface_Access_Array_Access is access all AllBinaryGameCanvasInterface_Access_Array;
   type AllBinaryGameCanvasInterface_Access_Array_Access_Array is array (Natural range <>) of AllBinaryGameCanvasInterface_Access_Array_Access;
   type AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access is access all AllBinaryGameCanvasInterface_Access_Array_Access_Array;
   type AllBinaryGameCanvasInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryGameCanvasInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryGameCanvasInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryGameCanvasInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryGameCanvasInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryGameCanvasInterface_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryGameCanvasInterface_Access_Array_Object'Class then AllBinaryGameCanvasInterface_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryGameCanvasInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryGameCanvasInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryGameCanvasInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryGameCanvasInterface_Access_Array_Access_Array_Object'Class then AllBinaryGameCanvasInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References;

with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.graphics.displayable.DisplayableInterface_Package; use org.allbinary.graphics.displayable.DisplayableInterface_Package;

package org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package DisplayableInterface_Package renames Standard.org.allbinary.graphics.displayable.DisplayableInterface_Package;
   package Reference_Types is
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type AllBinaryGameCanvasInterface is interface and DisplayableInterface;
   subtype AllBinaryGameCanvasInterface_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryGameCanvasInterface_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryGameCanvasInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   function Java_Box (Value : AllBinaryGameCanvasInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryGameCanvasInterface_Access_Array (Value : access Java_Object'Class) return AllBinaryGameCanvasInterface_Access_Array_Access renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.Java_Unbox_AllBinaryGameCanvasInterface_Access_Array;
   subtype AllBinaryGameCanvasInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   subtype AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References."=";
   function Java_Box (Value : AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.Java_Box;
   function Java_Unbox_AllBinaryGameCanvasInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryGameCanvasInterface_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package_References.Java_Unbox_AllBinaryGameCanvasInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_AllBinaryGameCanvasInterface (Value : AllBinaryGameCanvasInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getLayerManager (This : in out AllBinaryGameCanvasInterface) return AllBinaryGameLayerManager_Access is abstract;

end org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;


