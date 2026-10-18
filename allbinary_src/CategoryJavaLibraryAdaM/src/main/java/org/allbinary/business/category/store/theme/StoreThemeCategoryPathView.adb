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


package body org.allbinary.business.category.store.theme.StoreThemeCategoryPathView_Package is

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
      Java_Result : constant Node_Access := StoreThemeCategoryPathView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.store.theme.StoreThemeCategoryPathView_Package;


