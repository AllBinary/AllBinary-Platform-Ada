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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package;
with org.allbinary.logic.communication.http.request.RequestParams_Package; use org.allbinary.logic.communication.http.request.RequestParams_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSession_Package; use org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.search.SearchRequest_Package; use org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package; use org.allbinary.logic.visual.transform.data.TransformHttpRequestDocument_Package;

package org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package is

   package StoreFrontViewFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontViewFactory_Package;
   package RequestParams_Package renames Standard.org.allbinary.logic.communication.http.request.RequestParams_Package;
   package WeblisketSession_Package renames Standard.org.allbinary.logic.communication.http.request.session.WeblisketSession_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;

   type TransformStoreDocument is tagged;
   type TransformStoreDocument_Access is access all TransformStoreDocument'Class;
   type TransformStoreDocument_Access_Array is array (Natural range <>) of TransformStoreDocument_Access;
   type TransformStoreDocument_Access_Array_Access is access all TransformStoreDocument_Access_Array;

   type TransformStoreDocument is new TransformHttpRequestDocument with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out TransformStoreDocument'Class; pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access);
   function Create (pageContext : PageContext_Access; weblisketSession : WeblisketSession_Access) return TransformStoreDocument_Access;

end org.allbinary.logic.visual.transform.data.TransformStoreDocument_Package;


