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


package body org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.EditCssStyleValidation_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out EditCssStyleValidation'Class; document : Document_Access) is
   begin
        CssStyleValidation_Package.Initialize (This, document);
   end Initialize;

   function Create (document : Document_Access) return EditCssStyleValidation_Access is
      This : constant EditCssStyleValidation_Access := new EditCssStyleValidation;
   begin
      Initialize (This.all, document);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out EditCssStyleValidation'Class; hashMap : HashMap_Access) is
   begin
        CssStyleValidation_Package.Initialize (This, hashMap);
   end Initialize;

   function Create (hashMap : HashMap_Access) return EditCssStyleValidation_Access is
      This : constant EditCssStyleValidation_Access := new EditCssStyleValidation;
   begin
      Initialize (This.all, hashMap);
      return This;
   end Create;

   function isValid (This : in out EditCssStyleValidation) return Boolean is
   begin
        return CssStyleValidation (This).isValid;
   end isValid;

   function validationInfo (This : in out EditCssStyleValidation) return Unbounded_String is
   begin
        return CssStyleValidation (This).validationInfo;
   end validationInfo;

   function toValidationInfoDoc (This : in out EditCssStyleValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out EditCssStyleValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out EditCssStyleValidation; document : Document_Access) return Node_Access is
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

   procedure isValid (This : in out EditCssStyleValidation) is
      Java_Result : constant Boolean := EditCssStyleValidation'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out EditCssStyleValidation) is
      Java_Result : constant Unbounded_String := EditCssStyleValidation'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out EditCssStyleValidation) is
      Java_Result : constant Document_Access := EditCssStyleValidation'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out EditCssStyleValidation; document : Document_Access) is
      Java_Result : constant Node_Access := EditCssStyleValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out EditCssStyleValidation; document : Document_Access) is
      Java_Result : constant Node_Access := EditCssStyleValidation'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.EditCssStyleValidation_Package;


