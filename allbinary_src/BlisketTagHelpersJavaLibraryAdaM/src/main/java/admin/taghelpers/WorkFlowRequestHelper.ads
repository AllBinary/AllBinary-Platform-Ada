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

limited with admin.taghelpers.WorkFlowRequestHelper_Package;
package admin.taghelpers.WorkFlowRequestHelper_Package_References is
   type WorkFlowRequestHelper_Access is access all admin.taghelpers.WorkFlowRequestHelper_Package.WorkFlowRequestHelper'Class;
   type WorkFlowRequestHelper_Access_Array is array (Natural range <>) of WorkFlowRequestHelper_Access;
   type WorkFlowRequestHelper_Access_Array_Access is access all WorkFlowRequestHelper_Access_Array;
   type WorkFlowRequestHelper_Access_Array_Access_Array is array (Natural range <>) of WorkFlowRequestHelper_Access_Array_Access;
   type WorkFlowRequestHelper_Access_Array_Access_Array_Access is access all WorkFlowRequestHelper_Access_Array_Access_Array;
end admin.taghelpers.WorkFlowRequestHelper_Package_References;

with admin.taghelpers.WorkFlowRequestHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.WorkFlowRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype WorkFlowInterface_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access;
   use type WorkFlowInterface_Access;
   subtype WorkFlowInterface_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array;
   use type WorkFlowInterface_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access;
   subtype WorkFlowInterface_Access_Array_Access_Array is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array;
   use type WorkFlowInterface_Access_Array_Access_Array;
   subtype WorkFlowInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.workflow.WorkFlowInterface_Package_References.WorkFlowInterface_Access_Array_Access_Array_Access;
   use type WorkFlowInterface_Access_Array_Access_Array_Access;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WorkFlowRequestHelper_Access is admin.taghelpers.WorkFlowRequestHelper_Package_References.WorkFlowRequestHelper_Access;
   function "=" (Left, Right : WorkFlowRequestHelper_Access) return Boolean renames admin.taghelpers.WorkFlowRequestHelper_Package_References."=";
   subtype WorkFlowRequestHelper_Access_Array is admin.taghelpers.WorkFlowRequestHelper_Package_References.WorkFlowRequestHelper_Access_Array;
   function "=" (Left, Right : WorkFlowRequestHelper_Access_Array) return Boolean renames admin.taghelpers.WorkFlowRequestHelper_Package_References."=";
   subtype WorkFlowRequestHelper_Access_Array_Access is admin.taghelpers.WorkFlowRequestHelper_Package_References.WorkFlowRequestHelper_Access_Array_Access;
   function "=" (Left, Right : WorkFlowRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.WorkFlowRequestHelper_Package_References."=";
   subtype WorkFlowRequestHelper_Access_Array_Access_Array is admin.taghelpers.WorkFlowRequestHelper_Package_References.WorkFlowRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : WorkFlowRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.WorkFlowRequestHelper_Package_References."=";
   subtype WorkFlowRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.WorkFlowRequestHelper_Package_References.WorkFlowRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WorkFlowRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.WorkFlowRequestHelper_Package_References."=";

   type WorkFlowRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      workFlowInterface : WorkFlowInterface_Access;
   end record;

   procedure Initialize (This : in out WorkFlowRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WorkFlowRequestHelper_Access;
   function delete (This : in out WorkFlowRequestHelper) return Unbounded_String;
   function insert (This : in out WorkFlowRequestHelper) return Unbounded_String;
   function update (This : in out WorkFlowRequestHelper) return Unbounded_String;

end admin.taghelpers.WorkFlowRequestHelper_Package;


