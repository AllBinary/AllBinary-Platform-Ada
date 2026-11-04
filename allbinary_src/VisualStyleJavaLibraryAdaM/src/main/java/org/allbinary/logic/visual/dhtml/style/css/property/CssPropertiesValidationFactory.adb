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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyData_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValidationFactory_Package;

package body org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype NodeList_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access;
   function "=" (Left, Right : NodeList_Access) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array;
   function "=" (Left, Right : NodeList_Access_Array) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access;
   function "=" (Left, Right : NodeList_Access_Array_Access) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array_Access_Array is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array;
   function "=" (Left, Right : NodeList_Access_Array_Access_Array) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   subtype NodeList_Access_Array_Access_Array_Access is org.w3c.dom.NodeList_Package_References.NodeList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NodeList_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.NodeList_Package_References."=";
   procedure Initialize_Fields (This : in out CssPropertiesValidationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CssPropertiesValidationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CssPropertiesValidationFactory_Access is
      This : constant CssPropertiesValidationFactory_Access := new CssPropertiesValidationFactory;
   begin
      CssPropertiesValidationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (nodeList_Param : access NodeList_Package.NodeList'Class) return BasicArrayList_Access is
      nodeList : constant NodeList_Access := NodeList_Access (nodeList_Param);
      propertiesVector : BasicArrayList_Access;
      node : Node_Access;
      cssPropertyValidationInterface : ValidationInterface_Access;
      index : Integer;
   begin
        propertiesVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        for index in 0 .. (nodeList.getLength) - 1 loop
            node := nodeList.item (index);
            if (node.getNodeName.compareTo (CssPropertyData_Package.getInstance.NAME)) = (0) then
                cssPropertyValidationInterface := ValidationInterface_Access (CssPropertyValidationFactory_Package.getInstance (node));
                propertiesVector.add (ValidationInterface_Package.Java_Object_Access_From_ValidationInterface (cssPropertyValidationInterface));
            end if;
        end loop;
        return propertiesVector;
   end getInstance;

   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
      styles : BasicArrayList_Access;
   begin
        styles := BasicArrayList_Access (BasicArrayListD_Package.Create);
        return styles;
   end getInstance;

   procedure getInstance (nodeList_Param : access NodeList_Package.NodeList'Class) is
      Java_Result : constant BasicArrayList_Access := getInstance (nodeList_Param => nodeList_Param);
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

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package;


