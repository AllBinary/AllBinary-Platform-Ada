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


package body org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package is

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
   function getInstance (nodeList : NodeList_Access) return BasicArrayList_Access is
      propertiesVector : BasicArrayList_Access;
      node : Node_Access;
      cssPropertyValidationInterface : ValidationInterface_Access;
      index : Integer;
   begin
        propertiesVector := BasicArrayListD_Package.Create;
        for index in 0 .. (nodeList.getLength) - 1 loop
            node := nodeList.item (index);
            if (node.getNodeName.compareTo (CssPropertyData_Package.getInstance.NAME)) = (0) then
                cssPropertyValidationInterface := ValidationInterface_Access (CssPropertyValidationFactory_Package.getInstance (node));
                propertiesVector.add (cssPropertyValidationInterface);
            end if;
        end loop;
        return propertiesVector;
   end getInstance;

   function getInstance (hashMap : HashMap_Access) return BasicArrayList_Access is
      styles : BasicArrayList_Access;
   begin
        styles := BasicArrayListD_Package.Create;
        return styles;
   end getInstance;

   procedure getInstance (nodeList : NodeList_Access) is
      Java_Result : constant BasicArrayList_Access := getInstance (nodeList);
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

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package;


