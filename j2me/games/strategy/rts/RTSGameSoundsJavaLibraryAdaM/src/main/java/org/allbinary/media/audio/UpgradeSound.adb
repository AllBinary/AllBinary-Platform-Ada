-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify



package body org.allbinary.media.audio.UpgradeSound_Package is

   procedure Initialize_Fields (This : in out UpgradeSound'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UpgradeSound'Class) is
   begin
        CompositeSound_Package.Initialize (This, To_Unbounded_String ("resource:/wav/upgrade.wav"));
   end Initialize;

   function Create return UpgradeSound_Access is
      This : constant UpgradeSound_Access := new UpgradeSound;
   begin
      UpgradeSound_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return Sound_Access is
   begin
        return UpgradeSound_Package.soundInterface;
   end getInstance;

begin
   null;
   soundInterface := Sound_Access (UpgradeSound_Package.Create);

end org.allbinary.media.audio.UpgradeSound_Package;


