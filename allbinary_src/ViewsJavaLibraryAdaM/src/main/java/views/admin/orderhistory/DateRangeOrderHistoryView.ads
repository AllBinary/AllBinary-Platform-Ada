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
--  with java.util.Calendar_Package; use java.util.Calendar_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.time.TimeUtil_Package; use org.allbinary.time.TimeUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.orderhistory.DateRangeOrderHistoryView_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package OrderData_Package renames org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistory_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package OrderHistoryData_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package OrderHistoryEntityFactory_Package renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package GLOBALS2_Package renames org.allbinary.globals.GLOBALS2_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TimeUtil_Package renames org.allbinary.time.TimeUtil_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type DateRangeOrderHistoryView is tagged;
   type DateRangeOrderHistoryView_Access is access all DateRangeOrderHistoryView'Class;
   type DateRangeOrderHistoryView_Access_Array is array (Natural range <>) of DateRangeOrderHistoryView_Access;
   type DateRangeOrderHistoryView_Access_Array_Access is access all DateRangeOrderHistoryView_Access_Array;

   type DateRangeOrderHistoryView is new HttpStoreComponentView and ValidationComponentInterface and DomNodeInterface with record
      logUtil : LogUtil_Access;
      VIEWALLORDERS : Unbounded_String;
      VIEWORDERSINLASTHOUR : Unbounded_String;
      VIEWORDERSINLASTDAY : Unbounded_String;
      VIEWORDERSINLASTWEEK : Unbounded_String;
      VIEWORDERSINLAST30DAYS : Unbounded_String;
      request : HttpServletRequest_Access;
      shipped : Unbounded_String;
      partiallyShipped : Unbounded_String;
      processing : Unbounded_String;
      preprocessing : Unbounded_String;
      cancelled : Unbounded_String;
      dateType : Unbounded_String;
      toDate : Unbounded_String;
      fromDate : Unbounded_String;
      fromYear : Unbounded_String;
      fromMonth : Unbounded_String;
      fromDay : Unbounded_String;
      fromHour : Unbounded_String;
      toYear : Unbounded_String;
      toMonth : Unbounded_String;
      toDay : Unbounded_String;
      toHour : Unbounded_String;
      command : Unbounded_String;
      ON : Unbounded_String;
      MAXLEN : Integer;
   end record;

   procedure Initialize (This : in out DateRangeOrderHistoryView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return DateRangeOrderHistoryView_Access;
   procedure getFormData (This : in out DateRangeOrderHistoryView);
   procedure addDomNodeInterfaces (This : in out DateRangeOrderHistoryView);
   function view (This : in out DateRangeOrderHistoryView) return Unbounded_String;
   procedure view (This : in out DateRangeOrderHistoryView);
   function toXmlNode (This : in out DateRangeOrderHistoryView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out DateRangeOrderHistoryView; document : Document_Access);
   function isValid (This : in out DateRangeOrderHistoryView) return Boolean;
   procedure isValid (This : in out DateRangeOrderHistoryView);
   function toValidationInfoDoc (This : in out DateRangeOrderHistoryView) return Document_Access;
   procedure toValidationInfoDoc (This : in out DateRangeOrderHistoryView);
   function toValidationInfoNode (This : in out DateRangeOrderHistoryView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out DateRangeOrderHistoryView; document : Document_Access);
   function validationInfo (This : in out DateRangeOrderHistoryView) return Unbounded_String;
   procedure validationInfo (This : in out DateRangeOrderHistoryView);

end views.admin.orderhistory.DateRangeOrderHistoryView_Package;


