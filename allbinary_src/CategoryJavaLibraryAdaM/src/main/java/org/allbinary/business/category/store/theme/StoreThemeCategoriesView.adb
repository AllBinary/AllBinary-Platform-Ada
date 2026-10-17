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


package body org.allbinary.business.category.store.theme.StoreThemeCategoriesView_Package is

   procedure Initialize_Fields (This : in out StoreThemeCategoriesView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreThemeCategoriesView'Class; categoryInterface_Param : access StoreThemeCategoryInterface'Class) is
      categoryInterface : StoreThemeCategoryInterface_Access := StoreThemeCategoryInterface_Access (categoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryInterface := categoryInterface;
   end Initialize;

   function Create (categoryInterface_Param : access StoreThemeCategoryInterface'Class) return StoreThemeCategoriesView_Access is
      This : constant StoreThemeCategoriesView_Access := new StoreThemeCategoriesView;
   begin
      StoreThemeCategoriesView_Package.Initialize (This.all, categoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreThemeCategoriesView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      node : Node_Access;
      childArray : Java_Object_Access_Array_Access;
      size : Integer;
      childCategoryInterface : CategoryInterface_Access;
      childCategoryNode : Node_Access;
      i : Integer;
   begin
        node := StoreThemeCategoryView_Package.Create (This.categoryInterface).toXmlNode (document);
        childArray := This.categoryInterface.getChildNodes.toArray;
        size := childArray'Length;
        for i in 0 .. (size) - 1 loop
            childCategoryInterface := CategoryInterface_Access (childArray (i));
            childCategoryNode := StoreThemeCategoriesView_Package.Create (StoreThemeCategoryInterface_Access (childCategoryInterface)).toXmlNode (document);
            node.appendChild (childCategoryNode);
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out StoreThemeCategoriesView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := StoreThemeCategoriesView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.store.theme.StoreThemeCategoriesView_Package;


