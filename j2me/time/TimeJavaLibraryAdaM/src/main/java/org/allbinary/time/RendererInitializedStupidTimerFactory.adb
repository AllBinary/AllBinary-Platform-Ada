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



package body org.allbinary.time.RendererInitializedStupidTimerFactory_Package is

   procedure Initialize_Fields (This : in out RendererInitializedStupidTimerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RendererInitializedStupidTimerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RendererInitializedStupidTimerFactory_Access is
      This : constant RendererInitializedStupidTimerFactory_Access := new RendererInitializedStupidTimerFactory;
   begin
      RendererInitializedStupidTimerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return StupidTimer_Access is
   begin
        return RendererInitializedStupidTimerFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := StupidTimer_Package.Create;

end org.allbinary.time.RendererInitializedStupidTimerFactory_Package;


