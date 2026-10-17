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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.AbContext_Package; use org.allbinary.business.context.AbContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package; use org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package; use org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
with org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package; use org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package; use org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;
with org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package; use org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package; use org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;
with org.allbinary.logic.control.search.SearchParams_Package; use org.allbinary.logic.control.search.SearchParams_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.io.file.FileUtil_Package; use org.allbinary.logic.io.file.FileUtil_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with views.admin.inventory.listings.ProductListingFactory_Package; use views.admin.inventory.listings.ProductListingFactory_Package;
with admin.taghelpers.TagHelperInterface_Package; use admin.taghelpers.TagHelperInterface_Package;

package admin.taghelpers.StaticPagesRequestHelper_Package is

   package AbContext_Package renames org.allbinary.business.context.AbContext_Package;
   package StoreFrontData_Package renames org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StoreFrontFactory_Package renames org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package URLGLOBALS_Package renames org.allbinary.globals.URLGLOBALS_Package;
   package AcceptableResponseGenerator_Package renames org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package UserEmailEventNameData_Package renames org.allbinary.logic.communication.smtp.event.UserEmailEventNameData_Package;
   package UserEmailEventHandler_Package renames org.allbinary.logic.communication.smtp.event.handler.UserEmailEventHandler_Package;
   package AdminUserEmailEventHandlerSingletons_Package renames org.allbinary.logic.communication.smtp.event.handler.factory.AdminUserEmailEventHandlerSingletons_Package;
   package StoreAdminUserEmailEventHandlerSingletons_Package renames org.allbinary.logic.communication.smtp.event.handler.factory.StoreAdminUserEmailEventHandlerSingletons_Package;
   package AdminEmailInfo_Package renames org.allbinary.logic.communication.smtp.info.AdminEmailInfo_Package;
   package BasicEmailInfo_Package renames org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
   package EmailInfo_Package renames org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
   package StoreEmailInfo_Package renames org.allbinary.logic.communication.smtp.info.StoreEmailInfo_Package;
   package SearchParams_Package renames org.allbinary.logic.control.search.SearchParams_Package;
   package SearchRequest_Package renames org.allbinary.logic.control.search.SearchRequest_Package;
   package FileUtil_Package renames org.allbinary.logic.io.file.FileUtil_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package ServiceClientInformationInterfaceFactory_Package renames org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory_Package;
   package TransformInfoData_Package renames org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package ProductListingFactory_Package renames views.admin.inventory.listings.ProductListingFactory_Package;

   type StaticPagesRequestHelper is tagged;
   type StaticPagesRequestHelper_Access is access all StaticPagesRequestHelper'Class;
   type StaticPagesRequestHelper_Access_Array is array (Natural range <>) of StaticPagesRequestHelper_Access;
   type StaticPagesRequestHelper_Access_Array_Access is access all StaticPagesRequestHelper_Access_Array;

   type StaticPagesRequestHelper is new AbContext and TagHelperInterface with record
      logUtil : LogUtil_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      request : HttpServletRequest_Access;
      storeName : Unbounded_String;
      searchParams : SearchParams_Access;
      xslFile : Unbounded_String;
   end record;

   procedure Initialize (This : in out StaticPagesRequestHelper'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access);
   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return StaticPagesRequestHelper_Access;
   procedure getFormData (This : in out StaticPagesRequestHelper);
   procedure email (This : in out StaticPagesRequestHelper);
   function generateStaticPages (This : in out StaticPagesRequestHelper) return Unbounded_String;
   procedure generateStaticPages (This : in out StaticPagesRequestHelper);
   function makePublic (This : in out StaticPagesRequestHelper) return Unbounded_String;
   procedure makePublic (This : in out StaticPagesRequestHelper);

end admin.taghelpers.StaticPagesRequestHelper_Package;


