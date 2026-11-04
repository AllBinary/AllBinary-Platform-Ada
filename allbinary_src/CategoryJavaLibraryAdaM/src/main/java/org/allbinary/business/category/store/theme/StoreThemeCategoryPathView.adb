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


with org.allbinary.business.category.CategoryView_Package; use org.allbinary.business.category.CategoryView_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package; use org.allbinary.logic.visual.theme.ThemeInterface_Package;
with org.allbinary.logic.visual.theme.ThemePropertiesView_Package; use org.allbinary.logic.visual.theme.ThemePropertiesView_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package; use org.allbinary.logic.visual.theme.ThemeValidation_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package; use org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail.CssStyleValidation_Package;
with org.allbinary.business.category.store.theme.StoreThemeCategoryInterface_Package;
with org.allbinary.logic.visual.theme.ThemeInterface_Package;
with org.allbinary.logic.visual.theme.ThemePropertiesView_Package;
with org.allbinary.logic.visual.theme.ThemeValidation_Package;

package body org.allbinary.business.category.store.theme.StoreThemeCategoryPathView_Package is

   package ThemeInterface_Package renames Standard.org.allbinary.logic.visual.theme.ThemeInterface_Package;
   package ThemePropertiesView_Package renames Standard.org.allbinary.logic.visual.theme.ThemePropertiesView_Package;
   package ThemeValidation_Package renames Standard.org.allbinary.logic.visual.theme.ThemeValidation_Package;
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
   procedure Initialize_Fields (This : in out StoreThemeCategoryPathView'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreThemeCategoryPathView'Class; categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) is
      categoryInterface : constant StoreThemeCategoryInterface_Access := StoreThemeCategoryInterface_Access (categoryInterface_Param);
   begin
        CategoryView_Package.Initialize (This, StoreThemeCategoryInterface_Access (categoryInterface));
   end Initialize;

   function Create (categoryInterface_Param : access StoreThemeCategoryInterface_Package.StoreThemeCategoryInterface'Class) return StoreThemeCategoryPathView_Access is
      This : constant StoreThemeCategoryPathView_Access := new StoreThemeCategoryPathView;
   begin
      StoreThemeCategoryPathView_Package.Initialize (This.all, categoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreThemeCategoryPathView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      storeThemeCategoryInterface : StoreThemeCategoryInterface_Access;
      themeArray : Java_Object_Access_Array_Access;
      size : Integer;
      themeValidation : ThemeValidation_Access;
      domNodeInterface : DomNodeInterface_Access;
      i : Integer;
   begin
        node := CategoryView (This).toXmlNode (document);
        storeThemeCategoryInterface := StoreThemeCategoryInterface_Access (StoreThemeCategoryPathView'Class (This).getCategoryInterface);
        themeArray := storeThemeCategoryInterface.getThemes.toArray;
        size := themeArray'Length;
        for i in 0 .. (size) - 1 loop
            themeValidation := ThemeValidation_Access (themeArray (i));
            domNodeInterface := DomNodeInterface_Access (ThemePropertiesView_Package.Create (ThemeInterface_Access (themeValidation)));
            node.appendChild (domNodeInterface.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out StoreThemeCategoryPathView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StoreThemeCategoryPathView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.store.theme.StoreThemeCategoryPathView_Package;


