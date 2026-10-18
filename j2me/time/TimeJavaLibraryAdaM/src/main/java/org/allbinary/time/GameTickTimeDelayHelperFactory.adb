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



package body org.allbinary.time.GameTickTimeDelayHelperFactory_Package is

   procedure Initialize_Fields (This : in out GameTickTimeDelayHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameTickTimeDelayHelper_Access is
   begin
        return GameTickTimeDelayHelperFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out GameTickTimeDelayHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameTickTimeDelayHelperFactory_Access is
      This : constant GameTickTimeDelayHelperFactory_Access := new GameTickTimeDelayHelperFactory;
   begin
      GameTickTimeDelayHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := GameTickTimeDelayHelper_Package.Create (-(1));

end org.allbinary.time.GameTickTimeDelayHelperFactory_Package;


