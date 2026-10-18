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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with admin.taghelpers.TagHelper_Package; use admin.taghelpers.TagHelper_Package;

package admin.taghelpers.OrderHistoryRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type OrderHistoryRequestHelper is tagged;
   type OrderHistoryRequestHelper_Access is access all OrderHistoryRequestHelper'Class;
   type OrderHistoryRequestHelper_Access_Array is array (Natural range <>) of OrderHistoryRequestHelper_Access;
   type OrderHistoryRequestHelper_Access_Array_Access is access all OrderHistoryRequestHelper_Access_Array;
   type OrderHistoryRequestHelper_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryRequestHelper_Access_Array_Access;
   type OrderHistoryRequestHelper_Access_Array_Access_Array_Access is access all OrderHistoryRequestHelper_Access_Array_Access_Array;

   type OrderHistoryRequestHelper is new TagHelper with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      request : HttpServletRequest_Access;
      id : Unbounded_String;
      groupId : Unbounded_String;
      status : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderHistoryRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return OrderHistoryRequestHelper_Access;
   procedure getFormData (This : in out OrderHistoryRequestHelper);
   function setOrderStatus (This : in out OrderHistoryRequestHelper) return Unbounded_String;
   function setOrderStatus (This : in out OrderHistoryRequestHelper; newStatus_Param : Unbounded_String) return Unbounded_String;
   procedure setOrderStatus (This : in out OrderHistoryRequestHelper; newStatus_Param : Unbounded_String);

end admin.taghelpers.OrderHistoryRequestHelper_Package;


