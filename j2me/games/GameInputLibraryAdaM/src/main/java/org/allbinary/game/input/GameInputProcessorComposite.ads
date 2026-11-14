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
limited with org.allbinary.game.input.GameInputProcessorComposite_Package;
package org.allbinary.game.input.GameInputProcessorComposite_Package_References is
   type GameInputProcessorComposite_Access is access all org.allbinary.game.input.GameInputProcessorComposite_Package.GameInputProcessorComposite'Class;
   type GameInputProcessorComposite_Access_Array is array (Natural range <>) of GameInputProcessorComposite_Access;
   type GameInputProcessorComposite_Access_Array_Access is access all GameInputProcessorComposite_Access_Array;
   type GameInputProcessorComposite_Access_Array_Access_Array is array (Natural range <>) of GameInputProcessorComposite_Access_Array_Access;
   type GameInputProcessorComposite_Access_Array_Access_Array_Access is access all GameInputProcessorComposite_Access_Array_Access_Array;
   type GameInputProcessorComposite_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputProcessorComposite_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputProcessorComposite_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputProcessorComposite_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputProcessorComposite_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputProcessorComposite_Access_Array_Access is (if Value /= null and then Value.all in GameInputProcessorComposite_Access_Array_Object'Class then GameInputProcessorComposite_Access_Array_Object'Class (Value.all).Value else null);
   type GameInputProcessorComposite_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputProcessorComposite_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputProcessorComposite_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputProcessorComposite_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputProcessorComposite_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputProcessorComposite_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInputProcessorComposite_Access_Array_Access_Array_Object'Class then GameInputProcessorComposite_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.GameInputProcessorComposite_Package_References;

with org.allbinary.game.input.GameInputProcessorComposite_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
limited with org.allbinary.game.input.GameInputProcessorInterface_Package;
with org.allbinary.game.input.GameInputProcessorInterface_Package_References;

package org.allbinary.game.input.GameInputProcessorComposite_Package is

   package Reference_Types is
   subtype GameInputProcessorInterface_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access;
   use type GameInputProcessorInterface_Access;
   subtype GameInputProcessorInterface_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array;
   use type GameInputProcessorInterface_Access_Array;
   subtype GameInputProcessorInterface_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access;
   use type GameInputProcessorInterface_Access_Array_Access;
   subtype GameInputProcessorInterface_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array;
   use type GameInputProcessorInterface_Access_Array_Access_Array;
   subtype GameInputProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessorInterface_Package_References.GameInputProcessorInterface_Access_Array_Access_Array_Access;
   use type GameInputProcessorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInputProcessorComposite_Access is org.allbinary.game.input.GameInputProcessorComposite_Package_References.GameInputProcessorComposite_Access;
   function "=" (Left, Right : GameInputProcessorComposite_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorComposite_Package_References."=";
   subtype GameInputProcessorComposite_Access_Array is org.allbinary.game.input.GameInputProcessorComposite_Package_References.GameInputProcessorComposite_Access_Array;
   function "=" (Left, Right : GameInputProcessorComposite_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorComposite_Package_References."=";
   subtype GameInputProcessorComposite_Access_Array_Access is org.allbinary.game.input.GameInputProcessorComposite_Package_References.GameInputProcessorComposite_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorComposite_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorComposite_Package_References."=";
   function Java_Box (Value : GameInputProcessorComposite_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInputProcessorComposite_Package_References.Java_Box;
   function Java_Unbox_GameInputProcessorComposite_Access_Array (Value : access Java_Object'Class) return GameInputProcessorComposite_Access_Array_Access renames org.allbinary.game.input.GameInputProcessorComposite_Package_References.Java_Unbox_GameInputProcessorComposite_Access_Array;
   subtype GameInputProcessorComposite_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessorComposite_Package_References.GameInputProcessorComposite_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessorComposite_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessorComposite_Package_References."=";
   subtype GameInputProcessorComposite_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessorComposite_Package_References.GameInputProcessorComposite_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessorComposite_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessorComposite_Package_References."=";
   function Java_Box (Value : GameInputProcessorComposite_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.GameInputProcessorComposite_Package_References.Java_Box;
   function Java_Unbox_GameInputProcessorComposite_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInputProcessorComposite_Access_Array_Access_Array_Access renames org.allbinary.game.input.GameInputProcessorComposite_Package_References.Java_Unbox_GameInputProcessorComposite_Access_Array_Access_Array;

   type GameInputProcessorComposite is new PlayerGameInput with record
      name : Unbounded_String;
      gameInputProcessorInterface : GameInputProcessorInterface_Access;
      NAME_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out GameInputProcessorComposite'Class; name : Unbounded_String; gameInputProcessorInterface_Param : access GameInputProcessorInterface_Package.GameInputProcessorInterface'Class);
   function Create (name : Unbounded_String; gameInputProcessorInterface_Param : access GameInputProcessorInterface_Package.GameInputProcessorInterface'Class) return GameInputProcessorComposite_Access;
   procedure update (This : in out GameInputProcessorComposite);
   function toString (This : in out GameInputProcessorComposite) return Unbounded_String;

end org.allbinary.game.input.GameInputProcessorComposite_Package;


