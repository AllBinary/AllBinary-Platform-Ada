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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package; use org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package;
with org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package; use org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;

package taghelpers.StoreTagWorkFlowHelper_Package is

   package TagHelper_Package renames Standard.admin.taghelpers.TagHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StoreTagWorkFlowFactory_Package renames Standard.org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package;
   package StoreWorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.StoreWorkFlowInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;

   type StoreTagWorkFlowHelper is tagged;
   type StoreTagWorkFlowHelper_Access is access all StoreTagWorkFlowHelper'Class;
   type StoreTagWorkFlowHelper_Access_Array is array (Natural range <>) of StoreTagWorkFlowHelper_Access;
   type StoreTagWorkFlowHelper_Access_Array_Access is access all StoreTagWorkFlowHelper_Access_Array;

   type StoreTagWorkFlowHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      storeWorkFlowInterface : StoreWorkFlowInterface_Access;
   end record;

   procedure Initialize (This : in out StoreTagWorkFlowHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return StoreTagWorkFlowHelper_Access;
   function process (This : in out StoreTagWorkFlowHelper) return Integer;

end taghelpers.StoreTagWorkFlowHelper_Package;


