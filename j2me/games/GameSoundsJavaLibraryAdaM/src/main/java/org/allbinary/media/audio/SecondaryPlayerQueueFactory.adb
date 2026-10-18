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



package body org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package is

   procedure Initialize_Fields (This : in out SecondaryPlayerQueueFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out SecondaryPlayerQueueFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return SecondaryPlayerQueueFactory_Access is
      This : constant SecondaryPlayerQueueFactory_Access := new SecondaryPlayerQueueFactory;
   begin
      SecondaryPlayerQueueFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PlayerQueue_Access is
   begin
        return SecondaryPlayerQueueFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := PlayerQueue_Package.Create (4);

end org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;


