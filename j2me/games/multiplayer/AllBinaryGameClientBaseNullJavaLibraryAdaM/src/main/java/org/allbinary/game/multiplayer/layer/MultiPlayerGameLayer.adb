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


package body org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package is

   procedure Initialize_Fields (This : in out MultiPlayerGameLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MultiPlayerGameLayer'Class; remoteInfo : RemoteInfo_Access; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access) is
   begin
        CollidableDestroyableDamageableLayer_Package.Initialize (This, groupInterface, name, layerInfo, viewPosition);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access; groupInterface : Group_Access_Array_Access; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access) return MultiPlayerGameLayer_Access is
      This : constant MultiPlayerGameLayer_Access := new MultiPlayerGameLayer;
   begin
      Initialize (This.all, remoteInfo, groupInterface, name, layerInfo, viewPosition);
      return This;
   end Create;

   function getMultiplayerBehavior (This : in out MultiPlayerGameLayer) return MultiplayerBehavior_Access is
   begin
        return MultiplayerBehavior_Package.NULL_MULTIPLAYER_BEHAVIOR;
   end getMultiplayerBehavior;

   procedure setPingInfo (This : in out MultiPlayerGameLayer; show : Boolean) is
   begin
        null;
   end setPingInfo;

   procedure setFiring (This : in out MultiPlayerGameLayer; firing : Short_Integer) is
   begin
        null;
   end setFiring;

   function getFiring (This : in out MultiPlayerGameLayer) return Short_Integer is
   begin
        return 0;
   end getFiring;

   procedure getMultiplayerBehavior (This : in out MultiPlayerGameLayer) is
      Java_Result : constant MultiplayerBehavior_Access := MultiPlayerGameLayer'Class (This).getMultiplayerBehavior;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMultiplayerBehavior;

   procedure getFiring (This : in out MultiPlayerGameLayer) is
      Java_Result : constant Short_Integer := MultiPlayerGameLayer'Class (This).getFiring;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFiring;

end org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;


