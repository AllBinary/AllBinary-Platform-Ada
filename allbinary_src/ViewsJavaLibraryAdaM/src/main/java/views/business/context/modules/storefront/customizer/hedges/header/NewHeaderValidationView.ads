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
with org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.customizer.CustomizerUtil_Package; use views.business.context.modules.storefront.customizer.CustomizerUtil_Package;
with views.business.context.modules.storefront.customizer.hedges.header.TopBarView_Package; use views.business.context.modules.storefront.customizer.hedges.header.TopBarView_Package;

package views.business.context.modules.storefront.customizer.hedges.header.NewHeaderValidationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationComponentInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationComponentInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package HeadingValidation_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.hedges.heading.HeadingValidation_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package CustomizerUtil_Package renames Standard.views.business.context.modules.storefront.customizer.CustomizerUtil_Package;

   type NewHeaderValidationView is tagged;
   type NewHeaderValidationView_Access is access all NewHeaderValidationView'Class;
   type NewHeaderValidationView_Access_Array is array (Natural range <>) of NewHeaderValidationView_Access;
   type NewHeaderValidationView_Access_Array_Access is access all NewHeaderValidationView_Access_Array;

   type NewHeaderValidationView is new TopBarView and ValidationComponentInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out NewHeaderValidationView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return NewHeaderValidationView_Access;
   function toXmlDoc (This : in out NewHeaderValidationView) return Document_Access;
   procedure toXmlDoc (This : in out NewHeaderValidationView);
   function isValid (This : in out NewHeaderValidationView) return Boolean;
   procedure isValid (This : in out NewHeaderValidationView);
   function validationInfo (This : in out NewHeaderValidationView) return Unbounded_String;
   procedure validationInfo (This : in out NewHeaderValidationView);
   function toValidationInfoDoc (This : in out NewHeaderValidationView) return Document_Access;
   procedure toValidationInfoDoc (This : in out NewHeaderValidationView);
   function toValidationInfoNode (This : in out NewHeaderValidationView; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out NewHeaderValidationView; document : Document_Access);

end views.business.context.modules.storefront.customizer.hedges.header.NewHeaderValidationView_Package;


