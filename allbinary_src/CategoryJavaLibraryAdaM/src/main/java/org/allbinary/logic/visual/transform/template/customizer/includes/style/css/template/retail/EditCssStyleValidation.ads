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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.visual.dhtml.style.StyleData_Package; use org.allbinary.logic.visual.dhtml.style.StyleData_Package;
with org.allbinary.logic.visual.dhtml.style.StylesData_Package; use org.allbinary.logic.visual.dhtml.style.StylesData_Package;
with org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package; use org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package; use org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;

package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.EditCssStyleValidation_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package StyleData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StyleData_Package;
   package StylesData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StylesData_Package;
   package ColorsView_Package renames Standard.org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type EditCssStyleValidation is tagged;
   type EditCssStyleValidation_Access is access all EditCssStyleValidation'Class;
   type EditCssStyleValidation_Access_Array is array (Natural range <>) of EditCssStyleValidation_Access;
   type EditCssStyleValidation_Access_Array_Access is access all EditCssStyleValidation_Access_Array;

   type EditCssStyleValidation is new CssStyleValidation and ValidationInterface and DomNodeInterface with null record;

   procedure Initialize (This : in out EditCssStyleValidation'Class);
   function Create return EditCssStyleValidation_Access;
   procedure Initialize (This : in out EditCssStyleValidation'Class; document : Document_Access);
   function Create (document : Document_Access) return EditCssStyleValidation_Access;
   procedure Initialize (This : in out EditCssStyleValidation'Class; hashMap : HashMap_Access);
   function Create (hashMap : HashMap_Access) return EditCssStyleValidation_Access;
   function isValid (This : in out EditCssStyleValidation) return Boolean;
   function validationInfo (This : in out EditCssStyleValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out EditCssStyleValidation) return Document_Access;
   function toValidationInfoNode (This : in out EditCssStyleValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out EditCssStyleValidation; document : Document_Access);
   function toXmlNode (This : in out EditCssStyleValidation; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out EditCssStyleValidation; document : Document_Access);

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.EditCssStyleValidation_Package;


