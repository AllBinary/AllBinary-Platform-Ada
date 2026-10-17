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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.validate.ValidationComponentInterface_Package; use org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package; use views.business.context.modules.storefront.customizer.bodies.generic_Id.GenericBodyCustomizerView_Package;

package views.business.context.modules.storefront.customizer.bodies.generic_Id.NewGenericBodyValidationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package GenericBodyValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.GenericBodyValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package CustomizerUtil_Package renames Standard.views.business.context.modules.storefront.customizer.CustomizerUtil_Package;

   type NewGenericBodyValidationView is tagged;
   type NewGenericBodyValidationView_Access is access all NewGenericBodyValidationView'Class;
   type NewGenericBodyValidationView_Access_Array is array (Natural range <>) of NewGenericBodyValidationView_Access;
   type NewGenericBodyValidationView_Access_Array_Access is access all NewGenericBodyValidationView_Access_Array;

   type NewGenericBodyValidationView is new GenericBodyCustomizerView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NewGenericBodyValidationView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return NewGenericBodyValidationView_Access;
   function toXmlDoc (This : in out NewGenericBodyValidationView) return Document_Access;
   function isValid (This : in out NewGenericBodyValidationView) return Boolean;
   function validationInfo (This : in out NewGenericBodyValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out NewGenericBodyValidationView) return Document_Access;
   function toValidationInfoNode (This : in out NewGenericBodyValidationView; document_Param : access Document'Class) return Node_Access;
   procedure toValidationInfoNode (This : in out NewGenericBodyValidationView; document_Param : access Document'Class);
   function view (This : in out NewGenericBodyValidationView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.bodies.generic_Id.NewGenericBodyValidationView_Package;


