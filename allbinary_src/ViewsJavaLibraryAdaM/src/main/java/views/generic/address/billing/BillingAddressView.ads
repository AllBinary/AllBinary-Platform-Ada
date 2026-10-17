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
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;
with views.generic_Id.address.StatesView_Package; use views.generic_Id.address.StatesView_Package;

package views.generic_Id.address.billing.BillingAddressView_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package StatesView_Package renames Standard.views.generic_Id.address.StatesView_Package;

   type BillingAddressView is tagged;
   type BillingAddressView_Access is access all BillingAddressView'Class;
   type BillingAddressView_Access_Array is array (Natural range <>) of BillingAddressView_Access;
   type BillingAddressView_Access_Array_Access is access all BillingAddressView_Access_Array;

   type BillingAddressView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      streetAddress : StreetAddress_Access;
   end record;

   procedure Initialize (This : in out BillingAddressView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return BillingAddressView_Access;
   function getRequest (This : in out BillingAddressView) return HttpServletRequest_Access;
   function toXmlNode (This : in out BillingAddressView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BillingAddressView; document_Param : access Document'Class);
   procedure addDomNodeInterfaces (This : in out BillingAddressView);
   function view (This : in out BillingAddressView) return Unbounded_String;

end views.generic_Id.address.billing.BillingAddressView_Package;


