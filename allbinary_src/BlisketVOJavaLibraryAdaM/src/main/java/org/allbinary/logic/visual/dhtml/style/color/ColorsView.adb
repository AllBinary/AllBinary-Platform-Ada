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


package body org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package is

   procedure Initialize_Fields (This : in out ColorsView'Class) is
   begin
      null;
      This.commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
      This.HEXRADIX := 16;
      This.MAX := 255;
      This.delta_Id := 20;
   end Initialize_Fields;


   procedure Initialize (This : in out ColorsView'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ColorsView_Access is
      This : constant ColorsView_Access := new ColorsView;
   begin
      ColorsView_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getColorNode (This : in out ColorsView; document_Param : access Document'Class; redIndex : Integer; greenIndex : Integer; blueIndex : Integer) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      hexColorStringBuffer : StringMaker_Access;
      colorNode : Node_Access;
   begin
        hexColorStringBuffer := StringMaker_Package.Create;
        if (redIndex) < (This.HEXRADIX) then
            hexColorStringBuffer.append (This.commonPhoneStrings.ZERO);
        end if;
        hexColorStringBuffer.append (Integer_Package.toString (redIndex, This.HEXRADIX));
        if (greenIndex) < (This.HEXRADIX) then
            hexColorStringBuffer.append (This.commonPhoneStrings.ZERO);
        end if;
        hexColorStringBuffer.append (Integer_Package.toString (greenIndex, This.HEXRADIX));
        if (blueIndex) < (This.HEXRADIX) then
            hexColorStringBuffer.append (This.commonPhoneStrings.ZERO);
        end if;
        hexColorStringBuffer.append (Integer_Package.toString (blueIndex, This.HEXRADIX));
        colorNode := ModDomHelper_Package.createNameValueNodes (document, ColorData_Package.getInstance.NAME, hexColorStringBuffer.toString);
        return colorNode;
   end getColorNode;

   --  throws Exception
   function toXmlNode (This : in out ColorsView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
      node : Node_Access;
      blackNode : Node_Access;
      hexColorStringBuffer : StringMaker_Access;
      colorNode : Node_Access;
      index : Integer;
      whiteNode : Node_Access;
      redIndex : Integer;
      greenIndex : Integer;
      blueIndex : Integer;
   begin
        node := ModDomHelper_Package.createNameValueNodes (document, ColorsData_Package.getInstance.NAME, To_Unbounded_String ("RGB Colors In Hex"));
        blackNode := ModDomHelper_Package.createNameValueNodes (document, ColorData_Package.getInstance.NAME, To_Unbounded_String ("000000"));
        node.appendChild (blackNode);
        index := 0;
        while (index) < (This.MAX) loop
            hexColorStringBuffer := StringMaker_Package.Create;
            if (index) < (This.HEXRADIX) then
                hexColorStringBuffer.append (This.commonPhoneStrings.ZERO);
            end if;
            hexColorStringBuffer.append (Integer_Package.toString (index, This.HEXRADIX));
            if (index) < (This.HEXRADIX) then
                hexColorStringBuffer.append (This.commonPhoneStrings.ZERO);
            end if;
            hexColorStringBuffer.append (Integer_Package.toString (index, This.HEXRADIX));
            if (index) < (This.HEXRADIX) then
                hexColorStringBuffer.append (This.commonPhoneStrings.ZERO);
            end if;
            hexColorStringBuffer.append (Integer_Package.toString (index, This.HEXRADIX));
            colorNode := ModDomHelper_Package.createNameValueNodes (document, ColorData_Package.getInstance.NAME, hexColorStringBuffer.toString);
            node.appendChild (colorNode);
            index := (index) + (This.delta_Id);
        end loop;
        whiteNode := ModDomHelper_Package.createNameValueNodes (document, ColorData_Package.getInstance.NAME, To_Unbounded_String ("FFFFFF"));
        node.appendChild (whiteNode);
        blueIndex := (This.MAX) / (2);
        while (blueIndex) < (This.MAX) loop
            greenIndex := 0;
            while (greenIndex) < ((This.MAX) / (2)) loop
                redIndex := 0;
                while (redIndex) < ((This.MAX) / (2)) loop
                    node.appendChild (This.getColorNode (document, redIndex, greenIndex, blueIndex));
                    redIndex := (redIndex) + (This.delta_Id);
                end loop;
                greenIndex := (greenIndex) + (This.delta_Id);
            end loop;
            blueIndex := (blueIndex) + (This.delta_Id);
        end loop;
        redIndex := (This.MAX) / (2);
        while (redIndex) < (This.MAX) loop
            greenIndex := 0;
            while (greenIndex) < ((This.MAX) / (2)) loop
                blueIndex := 0;
                while (blueIndex) < ((This.MAX) / (2)) loop
                    node.appendChild (This.getColorNode (document, redIndex, greenIndex, blueIndex));
                    blueIndex := (blueIndex) + (This.delta_Id);
                end loop;
                greenIndex := (greenIndex) + (This.delta_Id);
            end loop;
            redIndex := (redIndex) + (This.delta_Id);
        end loop;
        greenIndex := (This.MAX) / (2);
        while (greenIndex) < (This.MAX) loop
            redIndex := 0;
            while (redIndex) < ((This.MAX) / (2)) loop
                blueIndex := 0;
                while (blueIndex) < ((This.MAX) / (2)) loop
                    node.appendChild (This.getColorNode (document, redIndex, greenIndex, blueIndex));
                    blueIndex := (blueIndex) + (This.delta_Id);
                end loop;
                redIndex := (redIndex) + (This.delta_Id);
            end loop;
            greenIndex := (greenIndex) + (This.delta_Id);
        end loop;
        greenIndex := 0;
        while (greenIndex) < (This.MAX) loop
            redIndex := 0;
            while (redIndex) < (This.MAX) loop
                blueIndex := 0;
                while (blueIndex) < (This.MAX) loop
                    node.appendChild (This.getColorNode (document, redIndex, greenIndex, blueIndex));
                    blueIndex := (blueIndex) + ((2) * (This.delta_Id));
                end loop;
                redIndex := (redIndex) + ((2) * (This.delta_Id));
            end loop;
            greenIndex := (greenIndex) + ((2) * (This.delta_Id));
        end loop;
        return node;
   end toXmlNode;

   procedure getColorNode (This : in out ColorsView; document_Param : access Document'Class; redIndex : Integer; greenIndex : Integer; blueIndex : Integer) is
      Java_Result : constant Node_Access := ColorsView'Class (This).getColorNode (document_Param, redIndex, greenIndex, blueIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColorNode;

   procedure toXmlNode (This : in out ColorsView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := ColorsView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.visual.dhtml.style.color.ColorsView_Package;


