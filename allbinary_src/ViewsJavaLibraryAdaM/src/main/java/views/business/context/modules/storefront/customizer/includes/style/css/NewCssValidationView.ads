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
with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.includes.style.css.CssCustomizerView_Package; use views.business.context.modules.storefront.customizer.includes.style.css.CssCustomizerView_Package;

package views.business.context.modules.storefront.customizer.includes.style.css.NewCssValidationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package GenericCssStyleValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.includes.style.css.GenericCssStyleValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package CustomizerUtil_Package renames Standard.views.business.context.modules.storefront.customizer.CustomizerUtil_Package;

   type NewCssValidationView is tagged;
   type NewCssValidationView_Access is access all NewCssValidationView'Class;
   type NewCssValidationView_Access_Array is array (Natural range <>) of NewCssValidationView_Access;
   type NewCssValidationView_Access_Array_Access is access all NewCssValidationView_Access_Array;

   type NewCssValidationView is new CssCustomizerView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NewCssValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return NewCssValidationView_Access;
   function toXmlDoc (This : in out NewCssValidationView) return Document_Access;
   function isValid (This : in out NewCssValidationView) return Boolean;
   function validationInfo (This : in out NewCssValidationView) return Unbounded_String;
   function toValidationInfoDoc (This : in out NewCssValidationView) return Document_Access;
   function toValidationInfoNode (This : in out NewCssValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out NewCssValidationView; document : Document_Access);
   function view (This : in out NewCssValidationView) return Unbounded_String;

end views.business.context.modules.storefront.customizer.includes.style.css.NewCssValidationView_Package;


