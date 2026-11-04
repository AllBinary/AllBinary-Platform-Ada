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

limited with org.allbinary.game.tick.OptimizedTickableLayerManager_Package;
package org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References is
   type OptimizedTickableLayerManager_Access is access all org.allbinary.game.tick.OptimizedTickableLayerManager_Package.OptimizedTickableLayerManager'Class;
   type OptimizedTickableLayerManager_Access_Array is array (Natural range <>) of OptimizedTickableLayerManager_Access;
   type OptimizedTickableLayerManager_Access_Array_Access is access all OptimizedTickableLayerManager_Access_Array;
   type OptimizedTickableLayerManager_Access_Array_Access_Array is array (Natural range <>) of OptimizedTickableLayerManager_Access_Array_Access;
   type OptimizedTickableLayerManager_Access_Array_Access_Array_Access is access all OptimizedTickableLayerManager_Access_Array_Access_Array;
end org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References;

with org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;

package org.allbinary.game.tick.OptimizedTickableLayerManager_Package is

   package LayerManager_Package renames Standard.org.allbinary.layer.LayerManager_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OptimizedTickableLayerManager_Access is org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References.OptimizedTickableLayerManager_Access;
   function "=" (Left, Right : OptimizedTickableLayerManager_Access) return Boolean renames org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References."=";
   subtype OptimizedTickableLayerManager_Access_Array is org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References.OptimizedTickableLayerManager_Access_Array;
   function "=" (Left, Right : OptimizedTickableLayerManager_Access_Array) return Boolean renames org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References."=";
   subtype OptimizedTickableLayerManager_Access_Array_Access is org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References.OptimizedTickableLayerManager_Access_Array_Access;
   function "=" (Left, Right : OptimizedTickableLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References."=";
   subtype OptimizedTickableLayerManager_Access_Array_Access_Array is org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References.OptimizedTickableLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : OptimizedTickableLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References."=";
   subtype OptimizedTickableLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References.OptimizedTickableLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OptimizedTickableLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.tick.OptimizedTickableLayerManager_Package_References."=";

   type OptimizedTickableLayerManager is new LayerManager with null record;

   procedure Initialize (This : in out OptimizedTickableLayerManager'Class);
   function Create return OptimizedTickableLayerManager_Access;

end org.allbinary.game.tick.OptimizedTickableLayerManager_Package;


