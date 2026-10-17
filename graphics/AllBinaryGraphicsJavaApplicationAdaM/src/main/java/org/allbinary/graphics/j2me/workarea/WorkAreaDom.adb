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


package body org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package is

   procedure Initialize_Fields (This : in out WorkAreaDom'Class) is
   begin
      null;
      This.name_Case := Null_Unbounded_String;
      This.canvasNodeList := null;
   end Initialize_Fields;


   procedure Initialize (This : in out WorkAreaDom'Class; document_Param : access Document'Class) is
      document : Document_Access := Document_Access (document_Param);
      workAreaNodeList : NodeList_Access;
      numberOfworkAreas : Integer;
      numberOfNodes : Integer;
      nameNode : Node_Access;
      nameTextNode : Node_Access;
   begin
      Initialize_Fields (This);
        workAreaNodeList := document.getElementsByTagName (WORKAREA);
        if (workAreaNodeList) /= (null) then
            numberOfworkAreas := workAreaNodeList.getLength;
            if (numberOfworkAreas) = (1) then
                numberOfNodes := workAreaNodeList.getLength;
                nameNode := DomHelper_Package.getInstance.searchNodeList (NAME, workAreaNodeList.item (0).getChildNodes);
                nameTextNode := nameNode.getFirstChild;
                This.name_Case := nameTextNode.getNodeValue;
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Wrong Number of WorkAreas: ") & Java_Image (numberOfworkAreas)));
            end if;
            This.canvasNodeList := DomHelper_Package.getInstance.getChildrenWithoutTextNodes (WorkAreaDom_Package.FRAMES, workAreaNodeList.item (0).getChildNodes);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("workArea Node Not Found")));
        end if;
   end Initialize;

   function Create (document_Param : access Document'Class) return WorkAreaDom_Access is
      This : constant WorkAreaDom_Access := new WorkAreaDom;
   begin
      WorkAreaDom_Package.Initialize (This.all, document_Param);
      return This;
   end Create;

   function getName (This : in out WorkAreaDom) return Unbounded_String is
   begin
        return This.name_Case;
   end getName;

   function getCanvasNodes (This : in out WorkAreaDom) return BasicArrayList_Access is
   begin
        return This.canvasNodeList;
   end getCanvasNodes;

begin
   null;
   WORKAREA := To_Unbounded_String ("workArea");
   NAME := To_Unbounded_String ("name");
   FRAMES := To_Unbounded_String ("frames");

end org.allbinary.graphics.j2me.workarea.WorkAreaDom_Package;


