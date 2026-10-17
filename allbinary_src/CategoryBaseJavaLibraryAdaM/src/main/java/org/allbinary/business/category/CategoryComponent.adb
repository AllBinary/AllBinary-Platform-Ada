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


package body org.allbinary.business.category.CategoryComponent_Package is

   procedure Initialize_Fields (This : in out CategoryComponent'Class) is
   begin
      null;
      This.NO_TYPE := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryComponent'Class; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) is
      categoryInterface : constant CategoryInterface_Access := CategoryInterface_Access (categoryInterface_Param);
   begin
        CategoryView_Package.Initialize (This, categoryInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryComponent_Access is
      This : constant CategoryComponent_Access := new CategoryComponent;
   begin
      CategoryComponent_Package.Initialize (This.all, categoryInterface_Param);
      return This;
   end Create;

   function getTypeId (This : in out CategoryComponent) return Integer is
   begin
        return This.NO_TYPE;
   end getTypeId;

   function getTransformDocumentInterface (This : in out CategoryComponent) return TransformDocumentInterface_Access is
   begin
        return null;
   end getTransformDocumentInterface;

   --  throws Exception
   function getTransformInfoInterface (This : in out CategoryComponent) return TransformInfoInterface_Access is
   begin
        return null;
   end getTransformInfoInterface;

   procedure setTransformDocumentInterface (This : in out CategoryComponent; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class) is
      viewDocumentInterface : constant TransformDocumentInterface_Access := TransformDocumentInterface_Access (viewDocumentInterface_Param);
   begin
        null;
   end setTransformDocumentInterface;

   --  throws Exception
   function toXmlDoc (This : in out CategoryComponent) return Document_Access is
      document : Document_Access;
   begin
        document := DomDocumentHelper_Package.create;
        document.appendChild (CategoryView_Package.Create (This.getCategoryInterface).toXmlNode (document));
        return document;
   end toXmlDoc;

   --  throws Exception
   function view (This : in out CategoryComponent) return Unbounded_String is
   begin
        return Null_Unbounded_String;
   end view;

end org.allbinary.business.category.CategoryComponent_Package;


