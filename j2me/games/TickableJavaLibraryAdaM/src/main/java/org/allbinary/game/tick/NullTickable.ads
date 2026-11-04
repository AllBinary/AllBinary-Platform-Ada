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

limited with org.allbinary.game.tick.NullTickable_Package;
package org.allbinary.game.tick.NullTickable_Package_References is
   type NullTickable_Access is access all org.allbinary.game.tick.NullTickable_Package.NullTickable'Class;
   type NullTickable_Access_Array is array (Natural range <>) of NullTickable_Access;
   type NullTickable_Access_Array_Access is access all NullTickable_Access_Array;
   type NullTickable_Access_Array_Access_Array is array (Natural range <>) of NullTickable_Access_Array_Access;
   type NullTickable_Access_Array_Access_Array_Access is access all NullTickable_Access_Array_Access_Array;
end org.allbinary.game.tick.NullTickable_Package_References;

with org.allbinary.game.tick.NullTickable_Package_References;
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
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;

package org.allbinary.game.tick.NullTickable_Package is

   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
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


   subtype NullTickable_Access is org.allbinary.game.tick.NullTickable_Package_References.NullTickable_Access;
   function "=" (Left, Right : NullTickable_Access) return Boolean renames org.allbinary.game.tick.NullTickable_Package_References."=";
   subtype NullTickable_Access_Array is org.allbinary.game.tick.NullTickable_Package_References.NullTickable_Access_Array;
   function "=" (Left, Right : NullTickable_Access_Array) return Boolean renames org.allbinary.game.tick.NullTickable_Package_References."=";
   subtype NullTickable_Access_Array_Access is org.allbinary.game.tick.NullTickable_Package_References.NullTickable_Access_Array_Access;
   function "=" (Left, Right : NullTickable_Access_Array_Access) return Boolean renames org.allbinary.game.tick.NullTickable_Package_References."=";
   subtype NullTickable_Access_Array_Access_Array is org.allbinary.game.tick.NullTickable_Package_References.NullTickable_Access_Array_Access_Array;
   function "=" (Left, Right : NullTickable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tick.NullTickable_Package_References."=";
   subtype NullTickable_Access_Array_Access_Array_Access is org.allbinary.game.tick.NullTickable_Package_References.NullTickable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullTickable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tick.NullTickable_Package_References."=";

   type NullTickable is new Java_Object and TickableInterface with record
      NAME : Unbounded_String;
   end record;
   SINGLETON : NullTickable_Access;

   procedure Initialize (This : in out NullTickable'Class);
   function Create return NullTickable_Access;
   function getInstance return NullTickable_Access;
   procedure processTick (This : in out NullTickable; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getName (This : in out NullTickable) return Unbounded_String;

end org.allbinary.game.tick.NullTickable_Package;


