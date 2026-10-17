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
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package; use org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package;

package org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type FontFamilyValidation is tagged;
   type FontFamilyValidation_Access is access all FontFamilyValidation'Class;
   type FontFamilyValidation_Access_Array is array (Natural range <>) of FontFamilyValidation_Access;
   type FontFamilyValidation_Access_Array_Access is access all FontFamilyValidation_Access_Array;

   type FontFamilyValidation is new FontFamilyView and ValidationInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out FontFamilyValidation'Class);
   function Create return FontFamilyValidation_Access;
   procedure Initialize (This : in out FontFamilyValidation'Class; node : Node_Access);
   function Create (node : Node_Access) return FontFamilyValidation_Access;
   function isValid (This : in out FontFamilyValidation) return Boolean;
   function validationInfo (This : in out FontFamilyValidation) return Unbounded_String;
   function toValidationInfoDoc (This : in out FontFamilyValidation) return Document_Access;
   function toValidationInfoNode (This : in out FontFamilyValidation; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out FontFamilyValidation; document : Document_Access);

end org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package;


