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

package body org.allbinary.business.category.CategoriesView_Package is

   procedure Initialize_Fields (This : in out CategoriesView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CategoriesView'Class; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
   begin
      Initialize_Fields (This);
        This.categoryInterface := categoryInterface;
   end Initialize;

   function Create (categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoriesView_Access is
      This : constant CategoriesView_Access := new CategoriesView;
   begin
      CategoriesView_Package.Initialize (This.all, categoryInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out CategoriesView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      childArray : Java_Object_Access_Array_Access;
      size : Integer;
      childCategoryInterface : CategoryInterface_Access;
      childCategoryNode : Node_Access;
      i : Integer;
   begin
        node := CategoryView_Package.Create (This.categoryInterface).toXmlNode (document);
        childArray := This.categoryInterface.getChildNodes.toArray;
        size := childArray'Length;
        for i in 0 .. (size) - 1 loop
            childCategoryInterface := CategoryInterface_Access (childArray (i));
            childCategoryNode := CategoriesView_Package.Create (childCategoryInterface).toXmlNode (document);
            node.appendChild (childCategoryNode);
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out CategoriesView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CategoriesView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.category.CategoriesView_Package;


