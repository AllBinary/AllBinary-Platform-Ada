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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.StoreFrontsRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type StoreFrontsRequestHelper is tagged;
   type StoreFrontsRequestHelper_Access is access all StoreFrontsRequestHelper'Class;
   type StoreFrontsRequestHelper_Access_Array is array (Natural range <>) of StoreFrontsRequestHelper_Access;
   type StoreFrontsRequestHelper_Access_Array_Access is access all StoreFrontsRequestHelper_Access_Array;
   type StoreFrontsRequestHelper_Access_Array_Access_Array is array (Natural range <>) of StoreFrontsRequestHelper_Access_Array_Access;
   type StoreFrontsRequestHelper_Access_Array_Access_Array_Access is access all StoreFrontsRequestHelper_Access_Array_Access_Array;

   type StoreFrontsRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      pageContext : PageContext_Access;
      request : HttpServletRequest_Access;
      weblisketSession : WeblisketSession_Access;
      storeName : Unbounded_String;
      modifyingStoreFrontInterface : StoreFrontInterface_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out StoreFrontsRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreFrontsRequestHelper_Access;
   procedure getFormData (This : in out StoreFrontsRequestHelper);
   function update (This : in out StoreFrontsRequestHelper) return Unbounded_String;
   procedure sendStoreCreatedEmails (This : in out StoreFrontsRequestHelper);
   function install (This : in out StoreFrontsRequestHelper) return Unbounded_String;
   function insert (This : in out StoreFrontsRequestHelper) return Unbounded_String;
   function delete (This : in out StoreFrontsRequestHelper) return Unbounded_String;

end admin.taghelpers.StoreFrontsRequestHelper_Package;


