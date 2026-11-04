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


with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package_References;
with org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package; use org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyView_Package;

package body org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package is

   package FontFamilyValidation_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.property.font.FontFamilyValidation_Package;
   subtype ValidationInterface_Access is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access;
   function "=" (Left, Right : ValidationInterface_Access) return Boolean renames org.allbinary.logic.control.validate.ValidationInterface_Package_References."=";
   subtype ValidationInterface_Access_Array is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array;
   function "=" (Left, Right : ValidationInterface_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidationInterface_Package_References."=";
   subtype ValidationInterface_Access_Array_Access is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array_Access;
   function "=" (Left, Right : ValidationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidationInterface_Package_References."=";
   subtype ValidationInterface_Access_Array_Access_Array is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ValidationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.validate.ValidationInterface_Package_References."=";
   subtype ValidationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.validate.ValidationInterface_Package_References.ValidationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ValidationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.validate.ValidationInterface_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   procedure Initialize_Fields (This : in out CssPropertyValidationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CssPropertyValidationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CssPropertyValidationFactory_Access is
      This : constant CssPropertyValidationFactory_Access := new CssPropertyValidationFactory;
   begin
      CssPropertyValidationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (node_Param : access Node_Package.Node'Class) return ValidationInterface_Access is
      node : constant Node_Access := Node_Access (node_Param);
   begin
        return ValidationInterface_Access (FontFamilyValidation_Package.Create (node));
   end getInstance;

   procedure getInstance (node_Param : access Node_Package.Node'Class) is
      Java_Result : constant ValidationInterface_Access := getInstance (node_Param => node_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package;


