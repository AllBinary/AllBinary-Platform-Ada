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
with org.allbinary.business.context.modules.storefront.StoreFront_Package; use org.allbinary.business.context.modules.storefront.StoreFront_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package; use org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.HttpContextView_Package; use views.business.context.HttpContextView_Package;

package views.admin.storefront.AddValidationStoreFrontView_Package is

   package StoreFront_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFront_Package;
   package StoreFrontFactory_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontFactory_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpContextView_Package renames Standard.views.business.context.HttpContextView_Package;

   type AddValidationStoreFrontView is tagged;
   type AddValidationStoreFrontView_Access is access all AddValidationStoreFrontView'Class;
   type AddValidationStoreFrontView_Access_Array is array (Natural range <>) of AddValidationStoreFrontView_Access;
   type AddValidationStoreFrontView_Access_Array_Access is access all AddValidationStoreFrontView_Access_Array;

   type AddValidationStoreFrontView is new HttpContextView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      newStoreFrontInterface : StoreFrontInterface_Access;
   end record;

   procedure Initialize (This : in out AddValidationStoreFrontView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return AddValidationStoreFrontView_Access;
   function isValid (This : in out AddValidationStoreFrontView) return Boolean;
   function getStoreViewsPath (This : in out AddValidationStoreFrontView) return Unbounded_String;
   function validationInfo (This : in out AddValidationStoreFrontView) return Unbounded_String;
   function toValidationInfoDoc (This : in out AddValidationStoreFrontView) return Document_Access;
   function toValidationInfoNode (This : in out AddValidationStoreFrontView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out AddValidationStoreFrontView; document : Document_Access);
   function view (This : in out AddValidationStoreFrontView) return Unbounded_String;

end views.admin.storefront.AddValidationStoreFrontView_Package;


