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


package body org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package is

   procedure Initialize_Fields (This : in out ImageTypes'Class) is
   begin
      null;
      This.vector := BasicArrayListD_Package.Create;
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

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out ImageTypes'Class; node : Node_Access) is
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
                This.getVector.add (InputImageType_Package.getInstance (nextImageTypeString));
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("ImageTypes Unknown Node")));
            end if;
        end loop;
   end Initialize;

   function Create (node : Node_Access) return ImageTypes_Access is
      This : constant ImageTypes_Access := new ImageTypes;
   begin
      ImageTypes_Package.Initialize (This.all, node);
      return This;
   end Create;

   function valueOf (anyType : Java_Object_Access_Array_Access) return ImageTypes_Access is
      imageTypes : ImageTypes_Access;
      imageType : InputImageType_Access;
      index : Integer;
   begin
        imageTypes := ImageTypes_Package.Create;
        for index in 0 .. (anyType'Length) - 1 loop
            imageType := InputImageType_Package.getInstance (Unbounded_String (anyType (index)));
            imageTypes.getVector.add (imageType);
        end loop;
        return imageTypes;
   end valueOf;

   function getVector (This : in out ImageTypes) return BasicArrayList_Access is
   begin
        return This.vector;
   end getVector;

   --  throws Exception
   function toXmlNode (This : in out ImageTypes; document : Document_Access) return Node_Access is
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
      Java_Result : constant ImageTypes_Access := valueOf (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end valueOf;

   procedure toXmlNode (This : in out ImageTypes; document : Document_Access) is
      Java_Result : constant Node_Access := ImageTypes'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;


