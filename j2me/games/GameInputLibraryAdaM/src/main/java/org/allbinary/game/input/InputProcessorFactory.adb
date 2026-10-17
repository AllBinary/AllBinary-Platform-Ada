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


package body org.allbinary.game.input.InputProcessorFactory_Package is

   procedure Initialize_Fields (This : in out InputProcessorFactory'Class) is
   begin
      null;
      This.inputProcessor := InputProcessor_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out InputProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputProcessorFactory_Access is
      This : constant InputProcessorFactory_Access := new InputProcessorFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return InputProcessorFactory_Access is
   begin
        return InputProcessorFactory_Package.instance;
   end getInstance;

   function getInputProcessor (This : in out InputProcessorFactory) return InputProcessor_Access is
   begin
        return This.inputProcessor;
   end getInputProcessor;

   procedure getInstance is
      Java_Result : constant InputProcessorFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInputProcessor (This : in out InputProcessorFactory) is
      Java_Result : constant InputProcessor_Access := InputProcessorFactory'Class (This).getInputProcessor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInputProcessor;

begin
   null;
   instance := InputProcessorFactory_Package.Create;

end org.allbinary.game.input.InputProcessorFactory_Package;


