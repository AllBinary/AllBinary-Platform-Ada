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

limited with org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package;
package org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References is
   type BasicInputMappingHelpPaintable_Access is access all org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package.BasicInputMappingHelpPaintable'Class;
   type BasicInputMappingHelpPaintable_Access_Array is array (Natural range <>) of BasicInputMappingHelpPaintable_Access;
   type BasicInputMappingHelpPaintable_Access_Array_Access is access all BasicInputMappingHelpPaintable_Access_Array;
   type BasicInputMappingHelpPaintable_Access_Array_Access_Array is array (Natural range <>) of BasicInputMappingHelpPaintable_Access_Array_Access;
   type BasicInputMappingHelpPaintable_Access_Array_Access_Array_Access is access all BasicInputMappingHelpPaintable_Access_Array_Access_Array;
end org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References;

with org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;
limited with org.allbinary.game.input.mapping.GameInputMapping_Package;
with org.allbinary.game.input.mapping.GameInputMapping_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.paint.help.HelpPaintable_Package; use org.allbinary.game.paint.help.HelpPaintable_Package;

package org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package is

   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package Input_Package renames Standard.org.allbinary.game.input.Input_Package;
   package GameInputMapping_Package renames Standard.org.allbinary.game.input.mapping.GameInputMapping_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
   subtype GameInputMapping_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access;
   use type GameInputMapping_Access;
   subtype GameInputMapping_Access_Array is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array;
   use type GameInputMapping_Access_Array;
   subtype GameInputMapping_Access_Array_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access;
   use type GameInputMapping_Access_Array_Access;
   subtype GameInputMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access_Array;
   use type GameInputMapping_Access_Array_Access_Array;
   subtype GameInputMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.GameInputMapping_Package_References.GameInputMapping_Access_Array_Access_Array_Access;
   use type GameInputMapping_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicInputMappingHelpPaintable_Access is org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References.BasicInputMappingHelpPaintable_Access;
   function "=" (Left, Right : BasicInputMappingHelpPaintable_Access) return Boolean renames org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References."=";
   subtype BasicInputMappingHelpPaintable_Access_Array is org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References.BasicInputMappingHelpPaintable_Access_Array;
   function "=" (Left, Right : BasicInputMappingHelpPaintable_Access_Array) return Boolean renames org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References."=";
   subtype BasicInputMappingHelpPaintable_Access_Array_Access is org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References.BasicInputMappingHelpPaintable_Access_Array_Access;
   function "=" (Left, Right : BasicInputMappingHelpPaintable_Access_Array_Access) return Boolean renames org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References."=";
   subtype BasicInputMappingHelpPaintable_Access_Array_Access_Array is org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References.BasicInputMappingHelpPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : BasicInputMappingHelpPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References."=";
   subtype BasicInputMappingHelpPaintable_Access_Array_Access_Array_Access is org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References.BasicInputMappingHelpPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicInputMappingHelpPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package_References."=";

   type BasicInputMappingHelpPaintable is new HelpPaintable with record
      gameInputMappingArray : GameInputMapping_Access_Array_Access;
      NONE : GameKey_Access;
   end record;

   procedure Initialize (This : in out BasicInputMappingHelpPaintable'Class; gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (gameInputMappingArray : GameInputMapping_Access_Array_Access; basicColor_Param : access BasicColor_Package.BasicColor'Class) return BasicInputMappingHelpPaintable_Access;
   procedure update (This : in out BasicInputMappingHelpPaintable; selectedGameKey_Param : access GameKey_Package.GameKey'Class; selectedInput_Param : access Input_Package.Input'Class);
   function get (This : in out BasicInputMappingHelpPaintable; keyList_Param : access BasicArrayList_Package.BasicArrayList'Class) return Unbounded_String;
   procedure get (This : in out BasicInputMappingHelpPaintable; keyList_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.game.paint.help.BasicInputMappingHelpPaintable_Package;


