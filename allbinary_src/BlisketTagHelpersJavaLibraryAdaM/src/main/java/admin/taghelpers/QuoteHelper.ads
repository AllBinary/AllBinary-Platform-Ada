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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package; use org.allbinary.business.user.quoterequest.QuoteRequest_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.QuoteHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package QuoteRequest_Package renames Standard.org.allbinary.business.user.quoterequest.QuoteRequest_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type QuoteHelper is tagged;
   type QuoteHelper_Access is access all QuoteHelper'Class;
   type QuoteHelper_Access_Array is array (Natural range <>) of QuoteHelper_Access;
   type QuoteHelper_Access_Array_Access is access all QuoteHelper_Access_Array;
   type QuoteHelper_Access_Array_Access_Array is array (Natural range <>) of QuoteHelper_Access_Array_Access;
   type QuoteHelper_Access_Array_Access_Array_Access is access all QuoteHelper_Access_Array_Access_Array;

   type QuoteHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      weblisketSession : WeblisketSession_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out QuoteHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return QuoteHelper_Access;
   procedure emailUser (This : in out QuoteHelper; quoteRequest_Param : access QuoteRequest_Package.QuoteRequest'Class);
   procedure emailAdmins (This : in out QuoteHelper; quoteRequest_Param : access QuoteRequest_Package.QuoteRequest'Class);
   function email (This : in out QuoteHelper) return Unbounded_String;
   function drop (This : in out QuoteHelper) return Unbounded_String;
   function create (This : in out QuoteHelper) return Unbounded_String;
   function restore (This : in out QuoteHelper) return Unbounded_String;
   function backup (This : in out QuoteHelper) return Unbounded_String;

end admin.taghelpers.QuoteHelper_Package;


