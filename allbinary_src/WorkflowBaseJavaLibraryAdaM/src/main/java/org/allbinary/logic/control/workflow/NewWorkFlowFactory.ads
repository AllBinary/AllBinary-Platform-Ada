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
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package is

   package DynamicObjectData_Package renames org.allbinary.business.DynamicObjectData_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeFactory_Package renames org.allbinary.logic.system.loader.AbeFactory_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type NewWorkFlowFactory is tagged;
   type NewWorkFlowFactory_Access is access all NewWorkFlowFactory'Class;
   type NewWorkFlowFactory_Access_Array is array (Natural range <>) of NewWorkFlowFactory_Access;
   type NewWorkFlowFactory_Access_Array_Access is access all NewWorkFlowFactory_Access_Array;

   type NewWorkFlowFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : NewWorkFlowFactory_Access;

   procedure Initialize (This : in out NewWorkFlowFactory'Class);
   function Create return NewWorkFlowFactory_Access;
   function getInstance return NewWorkFlowFactory_Access;
   procedure getInstance;
   function getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; hashMap : HashMap_Access; pageContext : PageContext_Access) return WorkFlowInterface_Access;
   procedure getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; className : Unbounded_String) return WorkFlowInterface_Access;
   procedure getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; className : Unbounded_String);

end org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package;


