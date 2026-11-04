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


with org.osgi.framework.BundleContext_Package; use org.osgi.framework.BundleContext_Package;
with org.osgi.framework.BundleContext_Package_References;
with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
with org.allbinary.osgi.service.InputAutomationServiceConsumer_Package; use org.allbinary.osgi.service.InputAutomationServiceConsumer_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package;

package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotServiceConsumer_Package is

   package InputAutomationRobotServiceInterface_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   function "=" (Left, Right : BundleContext_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
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


