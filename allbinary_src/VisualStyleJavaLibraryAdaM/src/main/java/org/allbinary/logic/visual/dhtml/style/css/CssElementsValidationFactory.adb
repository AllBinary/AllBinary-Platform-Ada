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


package body org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package is

   procedure Initialize_Fields (This : in out CssElementsValidationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CssElementsValidationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CssElementsValidationFactory_Access is
      This : constant CssElementsValidationFactory_Access := new CssElementsValidationFactory;
   begin
      CssElementsValidationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (cssElementStyleNodeList : BasicArrayList_Access) return BasicArrayList_Access is
      styles : BasicArrayList_Access;
      size : Integer;
      cssElementStyleNode : Node_Access;
      cssValidationInterface : ValidationInterface_Access;
      index : Integer;
   begin
        styles := BasicArrayListD_Package.Create;
        size := cssElementStyleNodeList.size;
        cssElementStyleNode := null;
        cssValidationInterface := null;
        for index in 0 .. (size) - 1 loop
            cssElementStyleNode := Node_Access (cssElementStyleNodeList.get (index));
            cssValidationInterface := ValidationInterface_Access (CssElementValidationFactory_Package.getInstance (cssElementStyleNode));
            styles.add (cssValidationInterface);
        end loop;
        return styles;
   end getInstance;

   function getInstance (hashMap : HashMap_Access) return BasicArrayList_Access is
      styles : BasicArrayList_Access;
   begin
        styles := BasicArrayListD_Package.Create;
        return styles;
   end getInstance;

   procedure getInstance (cssElementStyleNodeList : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := getInstance (cssElementStyleNodeList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (hashMap : HashMap_Access) is
      Java_Result : constant BasicArrayList_Access := getInstance (hashMap);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;


