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


package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package is

   procedure Initialize_Fields (This : in out InputAutomationRobotServiceConsumer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationRobotServiceConsumer'Class; bundleContext_Param : access BundleContext_Package.BundleContext'Class) is
      bundleContext : constant BundleContext_Access := BundleContext_Access (bundleContext_Param);
   begin
        InputAutomationServiceConsumer_Package.Initialize (This, InputAutomationRobotServiceInterface_Package.InputAutomationRobotServiceInterface'Tag.getName, bundleContext, InputAutomationRobotOSGIServiceVisitor_Package.Create);
   end Initialize;

   function Create (bundleContext_Param : access BundleContext_Package.BundleContext'Class) return InputAutomationRobotServiceConsumer_Access is
      This : constant InputAutomationRobotServiceConsumer_Access := new InputAutomationRobotServiceConsumer;
   begin
      InputAutomationRobotServiceConsumer_Package.Initialize (This.all, bundleContext_Param);
      return This;
   end Create;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package;


