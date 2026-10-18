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
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementValidationFactory_Package;

package body org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   function getInstance (cssElementStyleNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      cssElementStyleNodeList : constant BasicArrayList_Access := BasicArrayList_Access (cssElementStyleNodeList_Param);
      styles : BasicArrayList_Access;
      size : Integer;
      cssElementStyleNode : Node_Access;
      cssValidationInterface : ValidationInterface_Access;
      index : Integer;
   begin
        styles := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := cssElementStyleNodeList.size;
        cssElementStyleNode := null;
        cssValidationInterface := null;
        for index in 0 .. (size) - 1 loop
            cssElementStyleNode := Node_Access (cssElementStyleNodeList.get (index));
            cssValidationInterface := ValidationInterface_Access (CssElementValidationFactory_Package.getInstance (cssElementStyleNode));
            styles.add (Java_Object_Access (cssValidationInterface));
        end loop;
        return styles;
   end getInstance;

   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      styles : BasicArrayList_Access;
   begin
        styles := BasicArrayList_Access (BasicArrayListD_Package.Create);
        return styles;
   end getInstance;

   procedure getInstance (cssElementStyleNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := getInstance (cssElementStyleNodeList_Param => cssElementStyleNodeList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) is
      Java_Result : constant BasicArrayList_Access := getInstance (hashMap_Param => hashMap_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;


