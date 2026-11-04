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

limited with org.allbinary.game.tick.TickableLayerProcessor_Package;
package org.allbinary.game.tick.TickableLayerProcessor_Package_References is
   type TickableLayerProcessor_Access is access all org.allbinary.game.tick.TickableLayerProcessor_Package.TickableLayerProcessor'Class;
   type TickableLayerProcessor_Access_Array is array (Natural range <>) of TickableLayerProcessor_Access;
   type TickableLayerProcessor_Access_Array_Access is access all TickableLayerProcessor_Access_Array;
   type TickableLayerProcessor_Access_Array_Access_Array is array (Natural range <>) of TickableLayerProcessor_Access_Array_Access;
   type TickableLayerProcessor_Access_Array_Access_Array_Access is access all TickableLayerProcessor_Access_Array_Access_Array;
end org.allbinary.game.tick.TickableLayerProcessor_Package_References;

with org.allbinary.game.tick.TickableLayerProcessor_Package_References;
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
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;

package org.allbinary.game.tick.TickableLayerProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package LayerProcessor_Package renames Standard.org.allbinary.layer.LayerProcessor_Package;
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


   subtype TickableLayerProcessor_Access is org.allbinary.game.tick.TickableLayerProcessor_Package_References.TickableLayerProcessor_Access;
   function "=" (Left, Right : TickableLayerProcessor_Access) return Boolean renames org.allbinary.game.tick.TickableLayerProcessor_Package_References."=";
   subtype TickableLayerProcessor_Access_Array is org.allbinary.game.tick.TickableLayerProcessor_Package_References.TickableLayerProcessor_Access_Array;
   function "=" (Left, Right : TickableLayerProcessor_Access_Array) return Boolean renames org.allbinary.game.tick.TickableLayerProcessor_Package_References."=";
   subtype TickableLayerProcessor_Access_Array_Access is org.allbinary.game.tick.TickableLayerProcessor_Package_References.TickableLayerProcessor_Access_Array_Access;
   function "=" (Left, Right : TickableLayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableLayerProcessor_Package_References."=";
   subtype TickableLayerProcessor_Access_Array_Access_Array is org.allbinary.game.tick.TickableLayerProcessor_Package_References.TickableLayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : TickableLayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tick.TickableLayerProcessor_Package_References."=";
   subtype TickableLayerProcessor_Access_Array_Access_Array_Access is org.allbinary.game.tick.TickableLayerProcessor_Package_References.TickableLayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TickableLayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tick.TickableLayerProcessor_Package_References."=";

   type TickableLayerProcessor is new LayerProcessor with null record;

   procedure Initialize (This : in out TickableLayerProcessor'Class);
   function Create return TickableLayerProcessor_Access;
   procedure processAt (This : in out TickableLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   function isProcessorLayer (This : in out TickableLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isProcessorLayer (This : in out TickableLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.tick.TickableLayerProcessor_Package;


