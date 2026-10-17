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


   procedure Initialize (This : in out StoreThemeCategoriesView'Class; categoryInterface : StoreThemeCategoryInterface_Access) is
   begin
      Initialize_Fields (This);
        This.categoryInterface := categoryInterface;
   end Initialize;

   function Create (categoryInterface : StoreThemeCategoryInterface_Access) return StoreThemeCategoriesView_Access is
      This : constant StoreThemeCategoriesView_Access := new StoreThemeCategoriesView;
   begin
      Initialize (This.all, categoryInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreThemeCategoriesView; document : Document_Access) return Node_Access is
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

   procedure toXmlNode (This : in out StoreThemeCategoriesView; document : Document_Access) is
      Java_Result : constant Node_Access := StoreThemeCategoriesView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.store.theme.StoreThemeCategoriesView_Package;


