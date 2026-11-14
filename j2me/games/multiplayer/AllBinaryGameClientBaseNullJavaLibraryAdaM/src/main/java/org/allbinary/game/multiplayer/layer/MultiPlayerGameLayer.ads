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
limited with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
package org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References is
   type MultiPlayerGameLayer_Access is access all org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package.MultiPlayerGameLayer'Class;
   type MultiPlayerGameLayer_Access_Array is array (Natural range <>) of MultiPlayerGameLayer_Access;
   type MultiPlayerGameLayer_Access_Array_Access is access all MultiPlayerGameLayer_Access_Array;
   type MultiPlayerGameLayer_Access_Array_Access_Array is array (Natural range <>) of MultiPlayerGameLayer_Access_Array_Access;
   type MultiPlayerGameLayer_Access_Array_Access_Array_Access is access all MultiPlayerGameLayer_Access_Array_Access_Array;
   type MultiPlayerGameLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiPlayerGameLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiPlayerGameLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiPlayerGameLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiPlayerGameLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiPlayerGameLayer_Access_Array_Access is (if Value /= null and then Value.all in MultiPlayerGameLayer_Access_Array_Object'Class then MultiPlayerGameLayer_Access_Array_Object'Class (Value.all).Value else null);
   type MultiPlayerGameLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultiPlayerGameLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MultiPlayerGameLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultiPlayerGameLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultiPlayerGameLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultiPlayerGameLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MultiPlayerGameLayer_Access_Array_Access_Array_Object'Class then MultiPlayerGameLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References;

with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package; use org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package;
limited with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
limited with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;
with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References;

package org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;
   package Reference_Types is
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   use type RemoteInfo_Access;
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   use type RemoteInfo_Access_Array;
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access;
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   use type RemoteInfo_Access_Array_Access_Array;
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access_Array_Access;
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


   subtype MultiPlayerGameLayer_Access is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.MultiPlayerGameLayer_Access;
   function "=" (Left, Right : MultiPlayerGameLayer_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References."=";
   subtype MultiPlayerGameLayer_Access_Array is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.MultiPlayerGameLayer_Access_Array;
   function "=" (Left, Right : MultiPlayerGameLayer_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References."=";
   subtype MultiPlayerGameLayer_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.MultiPlayerGameLayer_Access_Array_Access;
   function "=" (Left, Right : MultiPlayerGameLayer_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References."=";
   function Java_Box (Value : MultiPlayerGameLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.Java_Box;
   function Java_Unbox_MultiPlayerGameLayer_Access_Array (Value : access Java_Object'Class) return MultiPlayerGameLayer_Access_Array_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.Java_Unbox_MultiPlayerGameLayer_Access_Array;
   subtype MultiPlayerGameLayer_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.MultiPlayerGameLayer_Access_Array_Access_Array;
   function "=" (Left, Right : MultiPlayerGameLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References."=";
   subtype MultiPlayerGameLayer_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.MultiPlayerGameLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiPlayerGameLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References."=";
   function Java_Box (Value : MultiPlayerGameLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.Java_Box;
   function Java_Unbox_MultiPlayerGameLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return MultiPlayerGameLayer_Access_Array_Access_Array_Access renames org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package_References.Java_Unbox_MultiPlayerGameLayer_Access_Array_Access_Array;

   type MultiPlayerGameLayer is new CollidableDestroyableDamageableLayer and MultiPlayerGameLayerInterface with null record;

   procedure Initialize (This : in out MultiPlayerGameLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return MultiPlayerGameLayer_Access;
   function getMultiplayerBehavior (This : in out MultiPlayerGameLayer) return MultiplayerBehavior_Access;
   procedure setPingInfo (This : in out MultiPlayerGameLayer; show : Boolean);
   procedure setFiring (This : in out MultiPlayerGameLayer; firing : Short_Integer);
   function getFiring (This : in out MultiPlayerGameLayer) return Short_Integer;

end org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;


