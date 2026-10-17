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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.username.UserName_Package; use org.allbinary.business.user.username.UserName_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.orderhistory.UserNameOrderHistoryView_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package UserData_Package renames org.allbinary.business.user.UserData_Package;
   package OrderData_Package renames org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistory_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package OrderHistoryData_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package UserName_Package renames org.allbinary.business.user.username.UserName_Package;
   package OrderHistoryEntity_Package renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package GLOBALS2_Package renames org.allbinary.globals.GLOBALS2_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type UserNameOrderHistoryView is tagged;
   type UserNameOrderHistoryView_Access is access all UserNameOrderHistoryView'Class;
   type UserNameOrderHistoryView_Access_Array is array (Natural range <>) of UserNameOrderHistoryView_Access;
   type UserNameOrderHistoryView_Access_Array_Access is access all UserNameOrderHistoryView_Access_Array;

   type UserNameOrderHistoryView is new HttpStoreComponentView and ValidationComponentInterface and DomNodeInterface with record
      logUtil : LogUtil_Access;
      request : HttpServletRequest_Access;
      userName : Unbounded_String;
      shipped : Unbounded_String;
      partiallyShipped : Unbounded_String;
      processing : Unbounded_String;
      preprocessing : Unbounded_String;
      cancelled : Unbounded_String;
      ON : Unbounded_String;
   end record;

   procedure Initialize (This : in out UserNameOrderHistoryView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return UserNameOrderHistoryView_Access;
   procedure addDomNodeInterfaces (This : in out UserNameOrderHistoryView);
   function view (This : in out UserNameOrderHistoryView) return Unbounded_String;
   procedure view (This : in out UserNameOrderHistoryView);
   function toXmlNode (This : in out UserNameOrderHistoryView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out UserNameOrderHistoryView; document : Document_Access);
   function isValid (This : in out UserNameOrderHistoryView) return Boolean;
   procedure isValid (This : in out UserNameOrderHistoryView);
   function toValidationInfoDoc (This : in out UserNameOrderHistoryView) return Document_Access;
   procedure toValidationInfoDoc (This : in out UserNameOrderHistoryView);
   function toValidationInfoNode (This : in out UserNameOrderHistoryView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out UserNameOrderHistoryView; document : Document_Access);
   function validationInfo (This : in out UserNameOrderHistoryView) return Unbounded_String;
   procedure validationInfo (This : in out UserNameOrderHistoryView);

end views.admin.orderhistory.UserNameOrderHistoryView_Package;


