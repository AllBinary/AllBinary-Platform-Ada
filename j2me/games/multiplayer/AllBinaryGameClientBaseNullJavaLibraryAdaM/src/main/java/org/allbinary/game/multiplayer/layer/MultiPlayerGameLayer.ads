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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package; use org.allbinary.game.multiplayer.layer.MultiPlayerGameLayerInterface_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package; use org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;

package org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type MultiPlayerGameLayer is tagged;
   type MultiPlayerGameLayer_Access is access all MultiPlayerGameLayer'Class;
   type MultiPlayerGameLayer_Access_Array is array (Natural range <>) of MultiPlayerGameLayer_Access;
   type MultiPlayerGameLayer_Access_Array_Access is access all MultiPlayerGameLayer_Access_Array;

   type MultiPlayerGameLayer is new CollidableDestroyableDamageableLayer and MultiPlayerGameLayerInterface with null record;

   procedure Initialize (This : in out MultiPlayerGameLayer'Class; remoteInfo : RemoteInfo_Access; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access);
   function Create (remoteInfo : RemoteInfo_Access; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access) return MultiPlayerGameLayer_Access;
   function getMultiplayerBehavior (This : in out MultiPlayerGameLayer) return MultiplayerBehavior_Access;
   procedure setPingInfo (This : in out MultiPlayerGameLayer; show : Boolean);
   procedure setFiring (This : in out MultiPlayerGameLayer; firing : Short_Integer);
   function getFiring (This : in out MultiPlayerGameLayer) return Short_Integer;

end org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;


