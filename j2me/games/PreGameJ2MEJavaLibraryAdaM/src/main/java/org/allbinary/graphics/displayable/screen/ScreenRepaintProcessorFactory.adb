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


package body org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package is

   procedure Initialize_Fields (This : in out ScreenRepaintProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ScreenRepaintProcessorFactory_Access is
   begin
        return ScreenRepaintProcessorFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ScreenRepaintProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ScreenRepaintProcessorFactory_Access is
      This : constant ScreenRepaintProcessorFactory_Access := new ScreenRepaintProcessorFactory;
   begin
      ScreenRepaintProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function create (This : in out ScreenRepaintProcessorFactory; displayable_Param : access Displayable_Package.Displayable'Class) return Processor_Access is
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
        if not (J2MEUtil_Package.isJ2ME) then
            return ScreenRepaintProcessor_Package.Create (displayable);
        else
            return Processor_Package.getInstance;
        end if;
   end create;

   procedure create (This : in out ScreenRepaintProcessorFactory; displayable_Param : access Displayable_Package.Displayable'Class) is
      Java_Result : constant Processor_Access := ScreenRepaintProcessorFactory'Class (This).create (displayable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

begin
   null;
   instance := ScreenRepaintProcessorFactory_Package.Create;

end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;


