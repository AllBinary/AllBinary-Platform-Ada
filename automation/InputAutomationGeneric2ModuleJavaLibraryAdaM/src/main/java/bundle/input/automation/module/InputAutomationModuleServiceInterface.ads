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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;

package bundle.input.automation.module.InputAutomationModuleServiceInterface_Package is

   package InputAutomationModuleFactoryInterface_Package renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package OSGIServiceInterface_Package renames org.allbinary.osgi.OSGIServiceInterface_Package;

   type InputAutomationModuleServiceInterface is interface and OSGIServiceInterface;
   type InputAutomationModuleServiceInterface_Access is access all InputAutomationModuleServiceInterface'Class;
   type InputAutomationModuleServiceInterface_Access_Array is array (Natural range <>) of InputAutomationModuleServiceInterface_Access;
   type InputAutomationModuleServiceInterface_Access_Array_Access is access all InputAutomationModuleServiceInterface_Access_Array;
   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceInterface) return InputAutomationModuleFactoryInterface_Access_Array_Access is abstract;

end bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;


