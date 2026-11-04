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

limited with org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package;
package org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References is
   type CollidableInterfaceLayerProcessor_Access is access all org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package.CollidableInterfaceLayerProcessor'Class;
   type CollidableInterfaceLayerProcessor_Access_Array is array (Natural range <>) of CollidableInterfaceLayerProcessor_Access;
   type CollidableInterfaceLayerProcessor_Access_Array_Access is access all CollidableInterfaceLayerProcessor_Access_Array;
   type CollidableInterfaceLayerProcessor_Access_Array_Access_Array is array (Natural range <>) of CollidableInterfaceLayerProcessor_Access_Array_Access;
   type CollidableInterfaceLayerProcessor_Access_Array_Access_Array_Access is access all CollidableInterfaceLayerProcessor_Access_Array_Access_Array;
end org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References;

with org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References;
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

package org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package is

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


   subtype CollidableInterfaceLayerProcessor_Access is org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References.CollidableInterfaceLayerProcessor_Access;
   function "=" (Left, Right : CollidableInterfaceLayerProcessor_Access) return Boolean renames org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References."=";
   subtype CollidableInterfaceLayerProcessor_Access_Array is org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References.CollidableInterfaceLayerProcessor_Access_Array;
   function "=" (Left, Right : CollidableInterfaceLayerProcessor_Access_Array) return Boolean renames org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References."=";
   subtype CollidableInterfaceLayerProcessor_Access_Array_Access is org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References.CollidableInterfaceLayerProcessor_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceLayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References."=";
   subtype CollidableInterfaceLayerProcessor_Access_Array_Access_Array is org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References.CollidableInterfaceLayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableInterfaceLayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References."=";
   subtype CollidableInterfaceLayerProcessor_Access_Array_Access_Array_Access is org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References.CollidableInterfaceLayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableInterfaceLayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package_References."=";

   type CollidableInterfaceLayerProcessor is new LayerProcessor with null record;

   procedure Initialize (This : in out CollidableInterfaceLayerProcessor'Class);
   function Create return CollidableInterfaceLayerProcessor_Access;
   procedure processAt (This : in out CollidableInterfaceLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   function isProcessorLayer (This : in out CollidableInterfaceLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Boolean;
   procedure isProcessorLayer (This : in out CollidableInterfaceLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.collision.layer.CollidableInterfaceLayerProcessor_Package;


