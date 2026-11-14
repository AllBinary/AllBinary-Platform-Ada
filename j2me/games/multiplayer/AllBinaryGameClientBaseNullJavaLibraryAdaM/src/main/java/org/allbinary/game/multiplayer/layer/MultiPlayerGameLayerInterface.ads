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
limited with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package;
package org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References is
   type MultiPlayerGameLayerInterface_Access is access all org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package.MultiPlayerGameLayerInterface'Class;
   type MultiPlayerGameLayerInterface_Access_Array is array (Natural range <>) of MultiPlayerGameLayerInterface_Access;
   type MultiPlayerGameLayerInterface_Access_Array_Access is access all MultiPlayerGameLayerInterface_Access_Array;
   type MultiPlayerGameLayerInterface_Access_Array_Access_Array is array (Natural range <>) of MultiPlayerGameLayerInterface_Access_Array_Access;
   type MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access is access all MultiPlayerGameLayerInterface_Access_Array_Access_Array;
   type MultiPlayerGameLayerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiPlayerGameLayerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiPlayerGameLayerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiPlayerGameLayerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiPlayerGameLayerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiPlayerGameLayerInterface_Access_Array_Access is (if Value /= null and then Value.all in MultiPlayerGameLayerInterface_Access_Array_Object'Class then MultiPlayerGameLayerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type MultiPlayerGameLayerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiPlayerGameLayerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiPlayerGameLayerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MultiPlayerGameLayerInterface_Access_Array_Access_Array_Object'Class then MultiPlayerGameLayerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References;

with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;
with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References;

package org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package is

   package Reference_Types is
   subtype MultiplayerBehavior_Access is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access;
   use type MultiplayerBehavior_Access;
   subtype MultiplayerBehavior_Access_Array is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array;
   use type MultiplayerBehavior_Access_Array;
   subtype MultiplayerBehavior_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array_Access;
   use type MultiplayerBehavior_Access_Array_Access;
   subtype MultiplayerBehavior_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array_Access_Array;
   use type MultiplayerBehavior_Access_Array_Access_Array;
   subtype MultiplayerBehavior_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array_Access_Array_Access;
   use type MultiplayerBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MultiPlayerGameLayerInterface is interface;
   subtype MultiPlayerGameLayerInterface_Access is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.MultiPlayerGameLayerInterface_Access;
   function "=" (Left, Right : MultiPlayerGameLayerInterface_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References."=";
   subtype MultiPlayerGameLayerInterface_Access_Array is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.MultiPlayerGameLayerInterface_Access_Array;
   function "=" (Left, Right : MultiPlayerGameLayerInterface_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References."=";
   subtype MultiPlayerGameLayerInterface_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.MultiPlayerGameLayerInterface_Access_Array_Access;
   function "=" (Left, Right : MultiPlayerGameLayerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References."=";
   function Java_Box (Value : MultiPlayerGameLayerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.Java_Box;
   function Java_Unbox_MultiPlayerGameLayerInterface_Access_Array (Value : access Java_Object'Class) return MultiPlayerGameLayerInterface_Access_Array_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.Java_Unbox_MultiPlayerGameLayerInterface_Access_Array;
   subtype MultiPlayerGameLayerInterface_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.MultiPlayerGameLayerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MultiPlayerGameLayerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References."=";
   subtype MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References."=";
   function Java_Box (Value : MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.Java_Box;
   function Java_Unbox_MultiPlayerGameLayerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return MultiPlayerGameLayerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package_References.Java_Unbox_MultiPlayerGameLayerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_MultiPlayerGameLayerInterface (Value : MultiPlayerGameLayerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMultiplayerBehavior (This : in out MultiPlayerGameLayerInterface) return MultiplayerBehavior_Access is abstract;

end org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package;


