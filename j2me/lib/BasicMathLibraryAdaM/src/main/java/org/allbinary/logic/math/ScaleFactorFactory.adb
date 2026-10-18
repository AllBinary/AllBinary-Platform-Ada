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



package body org.allbinary.logic.math.ScaleFactorFactory_Package is

   procedure Initialize_Fields (This : in out ScaleFactorFactory'Class) is
   begin
      null;
      This.DEFAULT_SCALE_FACTOR := 10;
      This.DEFAULT_SCALE_VALUE := 1024;
   end Initialize_Fields;

   procedure Initialize (This : in out ScaleFactorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ScaleFactorFactory_Access is
      This : constant ScaleFactorFactory_Access := new ScaleFactorFactory;
   begin
      ScaleFactorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ScaleFactorFactory_Access is
   begin
        return ScaleFactorFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := ScaleFactorFactory_Package.Create;

end org.allbinary.logic.math.ScaleFactorFactory_Package;


