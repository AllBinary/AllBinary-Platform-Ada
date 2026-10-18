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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out PathFindingNode'Class) is
   begin
      null;
      This.parent := NullUtil_Package.getInstance.NULL_OBJECT;
      This.geographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
   end Initialize_Fields;


   procedure Initialize (This : in out PathFindingNode'Class; parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      parent : constant Java_Object_Access := Java_Object_Access (parent_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
      Initialize_Fields (This);
        This.parent := parent;
        PathFindingNode'Class (This).setGeographicMapCellPositionP (geographicMapCellPosition);
        if (This.geographicMapCellPosition) = (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No GeographicMapCellPosition")));
        end if;
   end Initialize;

   function Create (parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingNode_Access is
      This : constant PathFindingNode_Access := new PathFindingNode;
   begin
      PathFindingNode_Package.Initialize (This.all, parent_Param, geographicMapCellPosition_Param);
      return This;
   end Create;

   function getParentP (This : in out PathFindingNode) return PathFindingNode_Access is
   begin
        return PathFindingNode_Access (This.parent);
   end getParentP;

   procedure setGeographicMapCellPositionP (This : in out PathFindingNode; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
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
        pathFindingNode := PathFindingNode'Class (This).getParentP;
        while (pathFindingNode) /= (null) loop
            stringBuffer.append (pathFindingNode.geographicMapCellPosition.toString);
            stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
            pathFindingNode := pathFindingNode.getParentP;
        end loop;
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;


