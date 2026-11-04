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

limited with org.allbinary.game.tick.TickableInterface_Package;
package org.allbinary.game.tick.TickableInterface_Package_References is
   type TickableInterface_Access is access all org.allbinary.game.tick.TickableInterface_Package.TickableInterface'Class;
   type TickableInterface_Access_Array is array (Natural range <>) of TickableInterface_Access;
   type TickableInterface_Access_Array_Access is access all TickableInterface_Access_Array;
   type TickableInterface_Access_Array_Access_Array is array (Natural range <>) of TickableInterface_Access_Array_Access;
   type TickableInterface_Access_Array_Access_Array_Access is access all TickableInterface_Access_Array_Access_Array;
end org.allbinary.game.tick.TickableInterface_Package_References;

with org.allbinary.game.tick.TickableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.layer.NamedInterface_Package; use org.allbinary.layer.NamedInterface_Package;

package org.allbinary.game.tick.TickableInterface_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package NamedInterface_Package renames Standard.org.allbinary.layer.NamedInterface_Package;
   package Reference_Types is
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TickableInterface is interface and NamedInterface;
   subtype TickableInterface_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access;
   function "=" (Left, Right : TickableInterface_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array;
   function "=" (Left, Right : TickableInterface_Access_Array) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access;
   function "=" (Left, Right : TickableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access_Array is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TickableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   subtype TickableInterface_Access_Array_Access_Array_Access is org.allbinary.game.tick.TickableInterface_Package_References.TickableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TickableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableInterface_Package_References."=";
   function Java_Object_Access_From_TickableInterface (Value : TickableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure processTick (This : in out TickableInterface; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is abstract;

end org.allbinary.game.tick.TickableInterface_Package;


