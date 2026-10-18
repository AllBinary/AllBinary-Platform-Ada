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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.orderhistory.UserNameOrderHistoryView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type UserNameOrderHistoryView is tagged;
   type UserNameOrderHistoryView_Access is access all UserNameOrderHistoryView'Class;
   type UserNameOrderHistoryView_Access_Array is array (Natural range <>) of UserNameOrderHistoryView_Access;
   type UserNameOrderHistoryView_Access_Array_Access is access all UserNameOrderHistoryView_Access_Array;
   type UserNameOrderHistoryView_Access_Array_Access_Array is array (Natural range <>) of UserNameOrderHistoryView_Access_Array_Access;
   type UserNameOrderHistoryView_Access_Array_Access_Array_Access is access all UserNameOrderHistoryView_Access_Array_Access_Array;

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

   procedure Initialize (This : in out UserNameOrderHistoryView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return UserNameOrderHistoryView_Access;
   procedure addDomNodeInterfaces (This : in out UserNameOrderHistoryView);
   function view (This : in out UserNameOrderHistoryView) return Unbounded_String;
   function toXmlNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class);
   function isValid (This : in out UserNameOrderHistoryView) return Boolean;
   function toValidationInfoDoc (This : in out UserNameOrderHistoryView) return Document_Access;
   function toValidationInfoNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out UserNameOrderHistoryView; document_Param : access Document_Package.Document'Class);
   function validationInfo (This : in out UserNameOrderHistoryView) return Unbounded_String;

end views.admin.orderhistory.UserNameOrderHistoryView_Package;


