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


package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package is

   procedure Initialize_Fields (This : in out PathFindingNode'Class) is
   begin
      null;
      This.parent := NullUtil_Package.getInstance.NULL_OBJECT;
      This.geographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end Initialize_Fields;


   procedure Initialize (This : in out PathFindingNode'Class; parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
      Initialize_Fields (This);
        This.parent := parent;
        This.setGeographicMapCellPositionP (geographicMapCellPosition);
        if (This.geographicMapCellPosition) = (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No GeographicMapCellPosition")));
        end if;
   end Initialize;

   function Create (parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return PathFindingNode_Access is
      This : constant PathFindingNode_Access := new PathFindingNode;
   begin
      Initialize (This.all, parent, geographicMapCellPosition);
      return This;
   end Create;

   function getParentP (This : in out PathFindingNode) return PathFindingNode_Access is
   begin
        return PathFindingNode_Access (This.parent);
   end getParentP;

   procedure setGeographicMapCellPositionP (This : in out PathFindingNode; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        This.geographicMapCellPosition := geographicMapCellPosition;
   end setGeographicMapCellPositionP;

   function toString (This : in out PathFindingNode) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      pathFindingNode : PathFindingNode_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)));
        stringBuffer.append (CommonLabels_Package.getInstance.COLON_SEP);
        stringBuffer.append (To_Unbounded_String (" Path: "));
        stringBuffer.append (This.geographicMapCellPosition.toString);
        pathFindingNode := This.getParentP;
        while (pathFindingNode) /= (null) loop
            stringBuffer.append (pathFindingNode.geographicMapCellPosition.toString);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            pathFindingNode := pathFindingNode.getParentP;
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure getParentP (This : in out PathFindingNode) is
      Java_Result : constant PathFindingNode_Access := PathFindingNode'Class (This).getParentP;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getParentP;

   procedure toString (This : in out PathFindingNode) is
      Java_Result : constant Unbounded_String := PathFindingNode'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;


