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
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package;

package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package InputImageType_Package renames Standard.org.allbinary.input.media.image.InputImageType_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out ImageTypes'Class) is
   begin
      null;
      This.vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out ImageTypes'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageTypes_Access is
      This : constant ImageTypes_Access := new ImageTypes;
   begin
      ImageTypes_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out ImageTypes'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      nodeList : NodeList_Access;
      childNode : Node_Access;
      nextImageTypeString : Unbounded_String;
      index : Integer;
   begin
      Initialize_Fields (This);
        nodeList := node.getChildNodes;
        for index in 0 .. (nodeList.getLength) - 1 loop
            childNode := nodeList.item (index);
            if (childNode.getNodeName.compareTo (ImageActionScriptOutputData_Package.TYPE_Id)) = (0) then
                nextImageTypeString := DomNodeHelper_Package.getTextNodeValue (childNode);
                ImageTypes'Class (This).getVector.add (InputImageType_Package.getInstance (nextImageTypeString));
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("ImageTypes Unknown Node")));
            end if;
        end loop;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return ImageTypes_Access is
      This : constant ImageTypes_Access := new ImageTypes;
   begin
      ImageTypes_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   function valueOf (anyType : Java_Object_Access_Array_Access) return ImageTypes_Access is
      imageTypes_Var : ImageTypes_Access;
      imageType : InputImageType_Access;
      index : Integer;
   begin
        imageTypes_Var := ImageTypes_Package.Create;
        for index in 0 .. (anyType'Length) - 1 loop
            imageType := InputImageType_Package.getInstance (Java_Unbox (anyType (index)));
            imageTypes_Var.getVector.add (imageType);
        end loop;
        return imageTypes_Var;
   end valueOf;

   function getVector (This : in out ImageTypes) return BasicArrayList_Access is
   begin
        return This.vector;
   end getVector;

   --  throws Exception
   function toXmlNode (This : in out ImageTypes; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      newNode : Node_Access;
      size : Integer;
      imageType : InputImageType_Access;
      index : Integer;
   begin
        newNode := document.createElement (ImageActionScriptOutputData_Package.TYPES);
        size := This.vector.size;
        for index in 0 .. (size) - 1 loop
            imageType := InputImageType_Access (This.vector.get (index));
            newNode.appendChild (ModDomHelper_Package.createTextNode (document, ImageActionScriptOutputData_Package.TYPE_Id, imageType.getName));
        end loop;
        return newNode;
   end toXmlNode;

   function toString (This : in out ImageTypes) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      size : Integer;
      imageType : InputImageType_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("ImageTypes: "));
        size := This.vector.size;
        for index in 0 .. (size) - 1 loop
            imageType := InputImageType_Access (This.vector.get (index));
            stringBuffer.append (imageType.getName);
            if (index) < ((size) - (1)) then
                stringBuffer.append (To_Unbounded_String (", "));
            end if;
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure valueOf (anyType : Java_Object_Access_Array_Access) is
      Java_Result : constant ImageTypes_Access := valueOf (anyType => anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end valueOf;

   procedure toXmlNode (This : in out ImageTypes; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := ImageTypes'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;


