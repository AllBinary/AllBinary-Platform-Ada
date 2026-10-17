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


   procedure Initialize (This : in out CategoryComponent'Class; categoryInterface : CategoryInterface_Access) is
   begin
        CategoryView_Package.Initialize (This, categoryInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (categoryInterface : CategoryInterface_Access) return CategoryComponent_Access is
      This : constant CategoryComponent_Access := new CategoryComponent;
   begin
      Initialize (This.all, categoryInterface);
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

   procedure setTransformDocumentInterface (This : in out CategoryComponent; viewDocumentInterface : TransformDocumentInterface_Access) is
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

   procedure getTypeId (This : in out CategoryComponent) is
      Java_Result : constant Integer := CategoryComponent'Class (This).getTypeId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTypeId;

   procedure getTransformDocumentInterface (This : in out CategoryComponent) is
      Java_Result : constant TransformDocumentInterface_Access := CategoryComponent'Class (This).getTransformDocumentInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformDocumentInterface;

   procedure getTransformInfoInterface (This : in out CategoryComponent) is
      Java_Result : constant TransformInfoInterface_Access := CategoryComponent'Class (This).getTransformInfoInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTransformInfoInterface;

   procedure toXmlDoc (This : in out CategoryComponent) is
      Java_Result : constant Document_Access := CategoryComponent'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure view (This : in out CategoryComponent) is
      Java_Result : constant Unbounded_String := CategoryComponent'Class (This).view;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end org.allbinary.business.category.CategoryComponent_Package;


