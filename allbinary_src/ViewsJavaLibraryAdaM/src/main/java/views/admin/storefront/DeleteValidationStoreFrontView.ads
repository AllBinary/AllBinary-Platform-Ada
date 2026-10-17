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
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.admin.storefront.StoreFrontComponent_Package; use views.admin.storefront.StoreFrontComponent_Package;

package views.admin.storefront.DeleteValidationStoreFrontView_Package is

   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type DeleteValidationStoreFrontView is tagged;
   type DeleteValidationStoreFrontView_Access is access all DeleteValidationStoreFrontView'Class;
   type DeleteValidationStoreFrontView_Access_Array is array (Natural range <>) of DeleteValidationStoreFrontView_Access;
   type DeleteValidationStoreFrontView_Access_Array_Access is access all DeleteValidationStoreFrontView_Access_Array;

   type DeleteValidationStoreFrontView is new StoreFrontComponent and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out DeleteValidationStoreFrontView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return DeleteValidationStoreFrontView_Access;
   function isValid (This : in out DeleteValidationStoreFrontView) return Boolean;
   function validationInfo (This : in out DeleteValidationStoreFrontView) return Unbounded_String;
   function toValidationInfoDoc (This : in out DeleteValidationStoreFrontView) return Document_Access;
   function toValidationInfoNode (This : in out DeleteValidationStoreFrontView; document_Param : access Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out DeleteValidationStoreFrontView; document_Param : access Document'Class);

end views.admin.storefront.DeleteValidationStoreFrontView_Package;


