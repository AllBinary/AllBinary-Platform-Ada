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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.allbinary.logic.visual.dhtml.style.StyleData_Package; use org.allbinary.logic.visual.dhtml.style.StyleData_Package;
with org.allbinary.logic.visual.dhtml.style.StylesData_Package; use org.allbinary.logic.visual.dhtml.style.StylesData_Package;
with org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package; use org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.EditCssStyleValidation_Package is

   package StyleData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StyleData_Package;
   package StylesData_Package renames Standard.org.allbinary.logic.visual.dhtml.style.StylesData_Package;
   package ColorsView_Package renames Standard.org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
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
   procedure Initialize_Fields (This : in out EditCssStyleValidation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out EditCssStyleValidation'Class) is
   begin
      CssStyleValidation_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return EditCssStyleValidation_Access is
      This : constant EditCssStyleValidation_Access := new EditCssStyleValidation;
   begin
      EditCssStyleValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out EditCssStyleValidation'Class; document_Param : access Document_Package.Document'Class) is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        CssStyleValidation_Package.Initialize (This, document);
   end Initialize;

   function Create (document_Param : access Document_Package.Document'Class) return EditCssStyleValidation_Access is
      This : constant EditCssStyleValidation_Access := new EditCssStyleValidation;
   begin
      EditCssStyleValidation_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out EditCssStyleValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        CssStyleValidation_Package.Initialize (This, hashMap);
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return EditCssStyleValidation_Access is
      This : constant EditCssStyleValidation_Access := new EditCssStyleValidation;
   begin
      EditCssStyleValidation_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function isValid (This : in out EditCssStyleValidation) return Boolean is
   begin
        return CssStyleValidation_Package.CssStyleValidation (This).isValid;
   end isValid;

   function validationInfo (This : in out EditCssStyleValidation) return Unbounded_String is
   begin
        return CssStyleValidation_Package.CssStyleValidation (This).validationInfo;
   end validationInfo;

   function toValidationInfoDoc (This : in out EditCssStyleValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditCssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out EditCssStyleValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      styleNode : Node_Access;
      size : Integer;
      styleDomNodeInterface : DomNodeInterface_Access;
      i : Integer;
   begin
        node := document.createElement (StylesData_Package.getInstance.NAME);
        styleNode := document.createElement (StyleData_Package.getInstance.NAME);
        node.appendChild (styleNode);
        styleNode.appendChild (ColorsView_Package.Create.toXmlNode (document));
        size := This.cssStyleElementVector.size;
        for i in 0 .. (size) - 1 loop
            styleDomNodeInterface := DomNodeInterface_Access (This.cssStyleElementVector.get (i));
            styleNode.appendChild (styleDomNodeInterface.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out EditCssStyleValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := EditCssStyleValidation'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out EditCssStyleValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := EditCssStyleValidation'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.EditCssStyleValidation_Package;


