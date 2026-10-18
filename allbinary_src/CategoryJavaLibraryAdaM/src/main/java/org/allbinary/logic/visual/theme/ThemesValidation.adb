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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.visual.theme.ThemesData_Package; use org.allbinary.logic.visual.theme.ThemesData_Package;

package body org.allbinary.logic.visual.theme.ThemesValidation_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out ThemesValidation'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ThemesValidation'Class) is
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        This.themeVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize;

   function Create return ThemesValidation_Access is
      This : constant ThemesValidation_Access := new ThemesValidation;
   begin
      ThemesValidation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out ThemesValidation'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return ThemesValidation_Access is
      This : constant ThemesValidation_Access := new ThemesValidation;
   begin
      ThemesValidation_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out ThemesValidation'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Validation_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return ThemesValidation_Access is
      This : constant ThemesValidation_Access := new ThemesValidation;
   begin
      ThemesValidation_Package.Initialize (This.all, hashMap_Param);
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

   function toValidationInfoNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function toXmlNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
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

   procedure toValidationInfoNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ThemesValidation'Class (This).toValidationInfoNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out ThemesValidation; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ThemesValidation'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.theme.ThemesValidation_Package;


