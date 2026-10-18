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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.business.context.modules.storefront.customizer.template.InsertCustomizerValidationView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames Standard.views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type InsertCustomizerValidationView is tagged;
   type InsertCustomizerValidationView_Access is access all InsertCustomizerValidationView'Class;
   type InsertCustomizerValidationView_Access_Array is array (Natural range <>) of InsertCustomizerValidationView_Access;
   type InsertCustomizerValidationView_Access_Array_Access is access all InsertCustomizerValidationView_Access_Array;
   type InsertCustomizerValidationView_Access_Array_Access_Array is array (Natural range <>) of InsertCustomizerValidationView_Access_Array_Access;
   type InsertCustomizerValidationView_Access_Array_Access_Array_Access is access all InsertCustomizerValidationView_Access_Array_Access_Array;

   type InsertCustomizerValidationView is new HttpStoreComponentView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
      viewName : Unbounded_String;
   end record;

   procedure Initialize (This : in out InsertCustomizerValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return InsertCustomizerValidationView_Access;
   function isValid (This : in out InsertCustomizerValidationView) return Boolean;
   function validationInfo (This : in out InsertCustomizerValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out InsertCustomizerValidationView) return Document_Access;
   function toValidationInfoNode (This : in out InsertCustomizerValidationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out InsertCustomizerValidationView; document_Param : access Document_Package.Document'Class);
   function view (This : in out InsertCustomizerValidationView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.template.InsertCustomizerValidationView_Package;


