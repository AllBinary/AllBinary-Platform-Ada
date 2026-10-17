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


package body org.allbinary.logic.visual.theme.ThemesValidation_Package is

   procedure Initialize_Fields (This : in out ThemesValidation'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ThemesValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.themeVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return ThemesValidation_Access is
      This : constant ThemesValidation_Access := new ThemesValidation;
   begin
      ThemesValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out ThemesValidation'Class; node : Node_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (node : Node_Access) return ThemesValidation_Access is
      This : constant ThemesValidation_Access := new ThemesValidation;
   begin
      ThemesValidation_Package.Initialize (This.all, node);
      return This;
   end Create;

   procedure Initialize (This : in out ThemesValidation'Class; hashMap : HashMap_Access) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (hashMap : HashMap_Access) return ThemesValidation_Access is
      This : constant ThemesValidation_Access := new ThemesValidation;
   begin
      ThemesValidation_Package.Initialize (This.all, hashMap);
      return This;
   end Create;

   function isValid (This : in out ThemesValidation) return Boolean is
   begin
        return True;
   end isValid;

   function validationInfo (This : in out ThemesValidation) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end validationInfo;

   function toValidationInfoDoc (This : in out ThemesValidation) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out ThemesValidation; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out ThemesValidation; document : Document_Access) return Node_Access is
      node : Node_Access;
      size : Integer;
      themeDomNodeInterface : DomNodeInterface_Access;
      i : Integer;
   begin
        node := document.createElement (ThemesData_Package.getInstance.NAME);
        size := This.themeVector.size;
        for i in 0 .. (size) - 1 loop
            themeDomNodeInterface := DomNodeInterface_Access (This.themeVector.get (i));
            node.appendChild (themeDomNodeInterface.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out ThemesValidation; document : Document_Access) is
      Java_Result : constant Node_Access := ThemesValidation'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out ThemesValidation; document : Document_Access) is
      Java_Result : constant Node_Access := ThemesValidation'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.theme.ThemesValidation_Package;


