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
limited with org.allbinary.game.input.GameInputInterface_Package;
package org.allbinary.game.input.GameInputInterface_Package_References is
   type GameInputInterface_Access is access all org.allbinary.game.input.GameInputInterface_Package.GameInputInterface'Class;
   type GameInputInterface_Access_Array is array (Natural range <>) of GameInputInterface_Access;
   type GameInputInterface_Access_Array_Access is access all GameInputInterface_Access_Array;
   type GameInputInterface_Access_Array_Access_Array is array (Natural range <>) of GameInputInterface_Access_Array_Access;
   type GameInputInterface_Access_Array_Access_Array_Access is access all GameInputInterface_Access_Array_Access_Array;
   type GameInputInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputInterface_Access_Array_Access is (if Value /= null and then Value.all in GameInputInterface_Access_Array_Object'Class then GameInputInterface_Access_Array_Object'Class (Value.all).Value else null);
   type GameInputInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInputInterface_Access_Array_Access_Array_Object'Class then GameInputInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.GameInputInterface_Package_References;

with org.allbinary.game.input.GameInputInterface_Package_References;
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

package org.allbinary.game.input.GameInputInterface_Package is

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


   type GameInputInterface is interface and NamedInterface;
   subtype GameInputInterface_Access is org.allbinary.game.input.GameInputInterface_Package_References.GameInputInterface_Access;
   function "=" (Left, Right : GameInputInterface_Access) return Boolean renames org.allbinary.game.input.GameInputInterface_Package_References."=";
   subtype GameInputInterface_Access_Array is org.allbinary.game.input.GameInputInterface_Package_References.GameInputInterface_Access_Array;
   function "=" (Left, Right : GameInputInterface_Access_Array) return Boolean renames org.allbinary.game.input.GameInputInterface_Package_References."=";
   subtype GameInputInterface_Access_Array_Access is org.allbinary.game.input.GameInputInterface_Package_References.GameInputInterface_Access_Array_Access;
   function "=" (Left, Right : GameInputInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputInterface_Package_References."=";
   function Java_Box (Value : GameInputInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInputInterface_Package_References.Java_Box;
   function Java_Unbox_GameInputInterface_Access_Array (Value : access Java_Object'Class) return GameInputInterface_Access_Array_Access renames org.allbinary.game.input.GameInputInterface_Package_References.Java_Unbox_GameInputInterface_Access_Array;
   subtype GameInputInterface_Access_Array_Access_Array is org.allbinary.game.input.GameInputInterface_Package_References.GameInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputInterface_Package_References."=";
   subtype GameInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputInterface_Package_References.GameInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputInterface_Package_References."=";
   function Java_Box (Value : GameInputInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInputInterface_Package_References.Java_Box;
   function Java_Unbox_GameInputInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInputInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.GameInputInterface_Package_References.Java_Unbox_GameInputInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_GameInputInterface (Value : GameInputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure processInput (This : in out GameInputInterface; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is abstract;
   procedure initInputProcessors (This : in out GameInputInterface) is abstract;

end org.allbinary.game.input.GameInputInterface_Package;


