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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References;
with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package;

package body org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package is

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
   subtype StoreThemeCategoryInterface_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   subtype StoreThemeCategoryInterface_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   subtype StoreThemeCategoryInterface_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   subtype StoreThemeCategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   subtype StoreThemeCategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References.StoreThemeCategoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreThemeCategoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out StoreThemeCategoryPathValidationView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreThemeCategoryPathValidationView'Class; categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) is
      categoryInterface : constant StoreThemeCategoryInterface_Access := StoreThemeCategoryInterface_Access (categoryInterface_Param);
   begin
        StoreThemeCategoryPathView_Package.Initialize (This, StoreThemeCategoryInterface_Access (categoryInterface));
   end Initialize;

   function Create (categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) return StoreThemeCategoryPathValidationView_Access is
      This : constant StoreThemeCategoryPathValidationView_Access := new StoreThemeCategoryPathValidationView;
   begin
      StoreThemeCategoryPathValidationView_Package.Initialize (This.all, categoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function isValid (This : in out StoreThemeCategoryPathValidationView) return Boolean is
   begin
        return True;
   end isValid;

   --  throws Exception
   function toValidationInfoDoc (This : in out StoreThemeCategoryPathValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   --  throws Exception
   function toValidationInfoNode (This : in out StoreThemeCategoryPathValidationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function validationInfo (This : in out StoreThemeCategoryPathValidationView) return Unbounded_String is
   begin
        return To_Unbounded_String ("Error");
   end validationInfo;

   procedure toValidationInfoNode (This : in out StoreThemeCategoryPathValidationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StoreThemeCategoryPathValidationView'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end org.allbinary.business.category.store.theme.StoreThemeCategoryPathValidationView_Package;


