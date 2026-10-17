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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.installer.Portion_Package; use org.allbinary.business.installer.Portion_Package;
with org.allbinary.business.user.UserInterface_Package; use org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.quoterequest.QuoteRequest_Package; use org.allbinary.business.user.quoterequest.QuoteRequest_Package;
with org.allbinary.data.tables.user.UserEntityFactory_Package; use org.allbinary.data.tables.user.UserEntityFactory_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package; use org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;
with org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package; use org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;
with org.allbinary.logic.communication.sql.AbSqlTableUtil_Package; use org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with admin.taghelpers.BasicTable_Package; use admin.taghelpers.BasicTable_Package;

package admin.taghelpers.QuoteHelper_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFront_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFront_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Portion_Package renames Standard.org.allbinary.business.installer.Portion_Package;
   package UserInterface_Package renames Standard.org.allbinary.business.user.UserInterface_Package;
   package QuoteRequest_Package renames Standard.org.allbinary.business.user.quoterequest.QuoteRequest_Package;
   package UserEntityFactory_Package renames Standard.org.allbinary.data.tables.user.UserEntityFactory_Package;
   package QuoteRequestEntity_Package renames Standard.org.allbinary.data.tables.user.quoterequest.QuoteRequestEntity_Package;
   package QuoteRequestEntityFactory_Package renames Standard.org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames Standard.org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package UserEmailEventHandler_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
   package AdminUserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
   package StoreAdminUserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;
   package UserEmailEventHandlerSingletons_Package renames Standard.org.allbinary.logic.communication.smtp.event.handler.factory.UserEmailEventHandlerSingletons_Package;
   package BasicEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
   package EmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
   package StoreEmailInfo_Package renames Standard.org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;
   package AbSqlTableUtil_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlTableUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;

   type QuoteHelper is tagged;
   type QuoteHelper_Access is access all QuoteHelper'Class;
   type QuoteHelper_Access_Array is array (Natural range <>) of QuoteHelper_Access;
   type QuoteHelper_Access_Array_Access is access all QuoteHelper_Access_Array;

   type QuoteHelper is new BasicTable with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      weblisketSession : WeblisketSession_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      portion : Portion_Access;
   end record;

   procedure Initialize (This : in out QuoteHelper'Class; hashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (hashMap : HashMap_Access; pageContext : PageContext_Access) return QuoteHelper_Access;
   procedure emailUser (This : in out QuoteHelper; quoteRequest : QuoteRequest_Access);
   procedure emailAdmins (This : in out QuoteHelper; quoteRequest : QuoteRequest_Access);
   function email (This : in out QuoteHelper) return Unbounded_String;
   function drop (This : in out QuoteHelper) return Unbounded_String;
   function create (This : in out QuoteHelper) return Unbounded_String;
   function restore (This : in out QuoteHelper) return Unbounded_String;
   function backup (This : in out QuoteHelper) return Unbounded_String;

end admin.taghelpers.QuoteHelper_Package;


