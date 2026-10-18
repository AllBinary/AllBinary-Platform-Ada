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


with org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package; use org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package;
with org.allbinary.logic.math.ScaleFactorFactory_Package; use org.allbinary.logic.math.ScaleFactorFactory_Package;

package body org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package is

   package AnalogControllerConfigurationEventHandler_Package renames Standard.org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler_Package;
   package ScaleFactorFactory_Package renames Standard.org.allbinary.logic.math.ScaleFactorFactory_Package;
   procedure Initialize_Fields (This : in out AnalogControllerConfigurationFactory'Class) is
   begin
      null;
      This.SCALE_FACTOR := ScaleFactorFactory_Package.getInstance.DEFAULT_SCALE_FACTOR;
      This.SCALE_VALUE := ScaleFactorFactory_Package.getInstance.DEFAULT_SCALE_VALUE;
      This.available := False;
      This.analogControllerConfigurationEvent := AnalogControllerConfigurationEvent_Package.Create (AnalogControllerConfigurationFactory_Access'(This'Unchecked_Access));
   end Initialize_Fields;


   function getInstance return AnalogControllerConfigurationFactory_Access is
   begin
        return AnalogControllerConfigurationFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AnalogControllerConfigurationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AnalogControllerConfigurationFactory_Access is
      This : constant AnalogControllerConfigurationFactory_Access := new AnalogControllerConfigurationFactory;
   begin
      AnalogControllerConfigurationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function isAvailable (This : in out AnalogControllerConfigurationFactory) return Boolean is
   begin
        return This.available;
   end isAvailable;

   --  throws Exception
   procedure setAvailable (This : in out AnalogControllerConfigurationFactory; available : Boolean) is
   begin
        This.available := available;
        AnalogControllerConfigurationEventHandler_Package.getInstance.fireEvent (This.analogControllerConfigurationEvent);
   end setAvailable;

begin
   null;
   instance := AnalogControllerConfigurationFactory_Package.Create;

end org.allbinary.android.input.motion.AnalogControllerConfigurationFactory_Package;


