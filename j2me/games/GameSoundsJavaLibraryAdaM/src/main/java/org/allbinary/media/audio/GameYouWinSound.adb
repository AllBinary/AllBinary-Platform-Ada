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



package body org.allbinary.media.audio.GameYouWinSound_Package is

   procedure Initialize_Fields (This : in out GameYouWinSound'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameYouWinSound'Class) is
   begin
        CompositeSound_Package.Initialize (This, To_Unbounded_String ("resource:/wav/youwin.wav"));
   end Initialize;

   function Create return GameYouWinSound_Access is
      This : constant GameYouWinSound_Access := new GameYouWinSound;
   begin
      GameYouWinSound_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return Sound_Access is
   begin
        return GameYouWinSound_Package.soundInterface;
   end getInstance;

begin
   null;
   soundInterface := Sound_Access (GameYouWinSound_Package.Create);

end org.allbinary.media.audio.GameYouWinSound_Package;


