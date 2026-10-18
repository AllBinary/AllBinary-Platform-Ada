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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.audio.NoPlayer_Package; use org.allbinary.media.audio.NoPlayer_Package;

package body org.allbinary.media.audio.NoSound_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out NoSound'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NoSound_Access is
   begin
        return NoSound_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NoSound'Class) is
   begin
        Sound_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING);
        NoSound'Class (This).setPlayerP (NoPlayer_Package.NO_PLAYER);
   end Initialize;

   function Create return NoSound_Access is
      This : constant NoSound_Access := new NoSound;
   begin
      NoSound_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NoSound_Package.Create;

end org.allbinary.media.audio.NoSound_Package;


