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


package body org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package is

   procedure Initialize_Fields (This : in out MultiplayerBehavior'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MultiplayerBehavior'Class; username : Unbounded_String) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (username : Unbounded_String) return MultiplayerBehavior_Access is
      This : constant MultiplayerBehavior_Access := new MultiplayerBehavior;
   begin
      MultiplayerBehavior_Package.Initialize (This.all, username);
      return This;
   end Create;

   procedure startTick (This : in out MultiplayerBehavior) is
   begin
        null;
   end startTick;

   procedure endTick (This : in out MultiplayerBehavior) is
   begin
        null;
   end endTick;

   function getApproximateElapsed (This : in out MultiplayerBehavior) return Long_Long_Integer is
   begin
        return 0;
   end getApproximateElapsed;

begin
   null;
   NULL_MULTIPLAYER_BEHAVIOR := MultiplayerBehavior_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING);

end org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;


