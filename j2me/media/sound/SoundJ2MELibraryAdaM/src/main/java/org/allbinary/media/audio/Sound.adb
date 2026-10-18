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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.audio.NoPlayer_Package; use org.allbinary.media.audio.NoPlayer_Package;

package body org.allbinary.media.audio.Sound_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out Sound'Class) is
   begin
      null;
      
      This.player := NoPlayer_Package.NO_PLAYER;
   end Initialize_Fields;


   procedure Initialize (This : in out Sound'Class; resource : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.resource := resource;
   end Initialize;

   function Create (resource : Unbounded_String) return Sound_Access is
      This : constant Sound_Access := new Sound;
   begin
      Sound_Package.Initialize (This.all, resource);
      return This;
   end Create;

   function getResource (This : in out Sound) return Unbounded_String is
   begin
        return This.resource;
   end getResource;

   function getPlayerP (This : in out Sound) return Player_Access is
   begin
        return This.player;
   end getPlayerP;

   procedure setPlayerP (This : in out Sound; player_Param : access Player_Package.Player'Class) is
      player : constant Player_Access := Player_Access (player_Param);
   begin
        This.player := player;
   end setPlayerP;

   --  throws Exception
   procedure init (This : in out Sound) is
   begin
        null;
   end init;

   function getDuration (This : in out Sound) return Integer is
   begin
        return -(1);
   end getDuration;

   procedure run (This : in out Sound) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.player.start;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.put (commonStrings.EXCEPTION_Id, Sound_Access'(This'Unchecked_Access), commonStrings.RUN);
                end;
        end;
   end run;

end org.allbinary.media.audio.Sound_Package;


