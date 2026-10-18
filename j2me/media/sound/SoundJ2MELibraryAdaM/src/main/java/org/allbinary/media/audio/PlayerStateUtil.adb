-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with javax.microedition.media.Player_Package; use javax.microedition.media.Player_Package;

package body org.allbinary.media.audio.PlayerStateUtil_Package is

   package Player_Package renames Standard.javax.microedition.media.Player_Package;
   procedure Initialize_Fields (This : in out PlayerStateUtil'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.UNREALIZED := To_Unbounded_String ("UNREALIZED");
      This.REALIZED := To_Unbounded_String ("REALIZED");
      This.PREFETCHED := To_Unbounded_String ("PREFETCHED");
      This.STARTED := To_Unbounded_String ("STARTED");
      This.CLOSED := To_Unbounded_String ("CLOSED");
   end Initialize_Fields;

   procedure Initialize (This : in out PlayerStateUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlayerStateUtil_Access is
      This : constant PlayerStateUtil_Access := new PlayerStateUtil;
   begin
      PlayerStateUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlayerStateUtil_Access is
   begin
        return PlayerStateUtil_Package.instance;
   end getInstance;

   function convert (This : in out PlayerStateUtil; state : Integer) return Unbounded_String is
   begin
        if (state) = (Player_Package.UNREALIZED) then
            return This.UNREALIZED;
        elsif (state) = (Player_Package.REALIZED) then
            return This.REALIZED;
        elsif (state) = (Player_Package.PREFETCHED) then
            return This.PREFETCHED;
        elsif (state) = (Player_Package.STARTED) then
            return This.STARTED;
        elsif (state) = (Player_Package.CLOSED) then
            return This.CLOSED;
        end if;
        return This.commonStrings.UNKNOWN;
   end convert;

   procedure convert (This : in out PlayerStateUtil; state : Integer) is
      Java_Result : constant Unbounded_String := PlayerStateUtil'Class (This).convert (state => state);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convert;

begin
   null;
   instance := PlayerStateUtil_Package.Create;

end org.allbinary.media.audio.PlayerStateUtil_Package;


