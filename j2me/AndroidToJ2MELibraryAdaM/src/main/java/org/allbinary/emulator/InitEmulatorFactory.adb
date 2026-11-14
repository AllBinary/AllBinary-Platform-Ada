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



package body org.allbinary.emulator.InitEmulatorFactory_Package is

   procedure Initialize_Fields (This : in out InitEmulatorFactory'Class) is
   begin
      null;
      This.initEmulator := False;
   end Initialize_Fields;

   procedure Initialize (This : in out InitEmulatorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InitEmulatorFactory_Access is
      This : constant InitEmulatorFactory_Access := new InitEmulatorFactory;
   begin
      InitEmulatorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InitEmulatorFactory_Access is
   begin
        return InitEmulatorFactory_Package.instance;
   end getInstance;

   procedure setInitEmulator (This : in out InitEmulatorFactory; initEmulator : Boolean) is
   begin
        This.initEmulator := initEmulator;
   end setInitEmulator;

   function isInitEmulator (This : in out InitEmulatorFactory) return Boolean is
   begin
        return This.initEmulator;
   end isInitEmulator;

begin
   null;
   instance := InitEmulatorFactory_Package.Create;

end org.allbinary.emulator.InitEmulatorFactory_Package;


