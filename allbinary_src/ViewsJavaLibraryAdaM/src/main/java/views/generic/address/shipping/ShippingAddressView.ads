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
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;
with views.generic_Id.address.StatesView_Package; use views.generic_Id.address.StatesView_Package;

package views.generic_Id.address.shipping.ShippingAddressView_Package is

   package StreetAddress_Package renames org.allbinary.business.user.address.StreetAddress_Package;
   package StreetAddressData_Package renames org.allbinary.business.user.address.StreetAddressData_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoHttpInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;
   package StatesView_Package renames views.generic_Id.address.StatesView_Package;

   type ShippingAddressView is tagged;
   type ShippingAddressView_Access is access all ShippingAddressView'Class;
   type ShippingAddressView_Access_Array is array (Natural range <>) of ShippingAddressView_Access;
   type ShippingAddressView_Access_Array_Access is access all ShippingAddressView_Access_Array;

   type ShippingAddressView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      streetAddress : StreetAddress_Access;
   end record;

   procedure Initialize (This : in out ShippingAddressView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return ShippingAddressView_Access;
   function getRequest (This : in out ShippingAddressView) return HttpServletRequest_Access;
   procedure getRequest (This : in out ShippingAddressView);
   function toXmlNode (This : in out ShippingAddressView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out ShippingAddressView; document : Document_Access);
   procedure addDomNodeInterfaces (This : in out ShippingAddressView);
   function view (This : in out ShippingAddressView) return Unbounded_String;
   procedure view (This : in out ShippingAddressView);

end views.generic_Id.address.shipping.ShippingAddressView_Package;


