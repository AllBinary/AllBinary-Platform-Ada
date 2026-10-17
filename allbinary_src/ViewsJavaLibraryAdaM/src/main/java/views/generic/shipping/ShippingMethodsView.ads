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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.user.address.StreetAddress_Package; use org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.tax.TaxFactory_Package; use org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethods_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package; use org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;
with org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package; use org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.generic_Id.shipping.ShippingMethodsView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package TaxFactory_Package renames Standard.org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;
   package ShippingMethods_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;
   package ShippingMethodsData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package;
   package ShippingInterface_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package StreetAddressesEntityInterface_Package renames Standard.org.allbinary.data.tables.user.address.StreetAddressesEntityInterface_Package;
   package ShippingAddressesEntityFactory_Package renames Standard.org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type ShippingMethodsView is tagged;
   type ShippingMethodsView_Access is access all ShippingMethodsView'Class;
   type ShippingMethodsView_Access_Array is array (Natural range <>) of ShippingMethodsView_Access;
   type ShippingMethodsView_Access_Array_Access is access all ShippingMethodsView_Access_Array;

   type ShippingMethodsView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      shippingMethods : ShippingMethods_Access;
      storeFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out ShippingMethodsView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return ShippingMethodsView_Access;
   function toXmlNode (This : in out ShippingMethodsView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ShippingMethodsView; document_Param : access Document'Class);
   procedure addDomNodeInterfaces (This : in out ShippingMethodsView);
   function view (This : in out ShippingMethodsView) return Unbounded_String;

end views.generic_Id.shipping.ShippingMethodsView_Package;


