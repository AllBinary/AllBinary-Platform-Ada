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


package body org.allbinary.game.layer.LayerPlacer_Package is

   procedure Initialize_Fields (This : in out LayerPlacer'Class) is
   begin
      null;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out LayerPlacer'Class; layerInterfaceVisitor_Param : access LayerInterfaceVisitor_Package.LayerInterfaceVisitor'Class; dimension_Param : access GPoint_Package.GPoint'Class) is
      layerInterfaceVisitor : constant LayerInterfaceVisitor_Access := LayerInterfaceVisitor_Access (layerInterfaceVisitor_Param);
      dimension : constant GPoint_Access := GPoint_Access (dimension_Param);
   begin
      Initialize_Fields (This);
        This.layerInterfaceVisitor := layerInterfaceVisitor;
        This.dimension := dimension;
   end Initialize;

   function Create (layerInterfaceVisitor_Param : access LayerInterfaceVisitor_Package.LayerInterfaceVisitor'Class; dimension_Param : access GPoint_Package.GPoint'Class) return LayerPlacer_Access is
      This : constant LayerPlacer_Access := new LayerPlacer;
   begin
      LayerPlacer_Package.Initialize (This.all, layerInterfaceVisitor_Param, dimension_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processList (This : in out LayerPlacer; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      layerPlacementInterface : LayerPlacementInterface_Access;
      index : Integer;
   begin
        size := list.size;
        layerPlacementInterface := null;
        for index in 0 .. (size) - 1 loop
            layerPlacementInterface := LayerPlacementInterface_Access (list.objectArray (index));
            This.process (layerPlacementInterface);
        end loop;
   end processList;

   --  throws Exception
   procedure process (This : in out LayerPlacer; layerPlacementInterface_Param : access LayerPlacementInterface_Package.LayerPlacementInterface'Class) is
      layerPlacementInterface : constant LayerPlacementInterface_Access := LayerPlacementInterface_Access (layerPlacementInterface_Param);
      relativePoint : GPoint_Access;
      layerInterfaceFactory : LayerInterfaceFactory_Access;
      hashtable : ABHashtable_Access;
      enumeration : Enumeration_Access;
      point : GPoint_Access;
      layerHashtable : ABHashtable_Access;
      x : Integer;
      y : Integer;
      z : Integer;
      layerInterface : AllBinaryLayer_Access;
   begin
        relativePoint := This.getPoint (layerPlacementInterface);
        layerInterfaceFactory := LayerInterfaceFactory_Package.getInstance;
        hashtable := layerPlacementInterface.getInstance;
        enumeration := hashtable.keys;
        point := null;
        layerHashtable := null;
        x := 0;
        y := 0;
        z := 0;
        layerInterface := null;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            point := GPoint_Access (This.enumerationUtil.nextElement (enumeration));
            layerHashtable := ABHashtable_Access (hashtable.get (point));
            x := (point.getX) + (relativePoint.getX);
            y := (point.getY) + (relativePoint.getY);
            z := (point.getZ) + (relativePoint.getZ);
            layerInterface := layerInterfaceFactory.getNexInstance (layerHashtable, x, y, z);
            This.layerInterfaceVisitor.visit (layerInterface);
        end loop;
   end process;

   --  throws Exception
   function getPoint (This : in out LayerPlacer; layerPlacementInterface_Param : access LayerPlacementInterface_Package.LayerPlacementInterface'Class) return GPoint_Access is
      layerPlacementInterface : constant LayerPlacementInterface_Access := LayerPlacementInterface_Access (layerPlacementInterface_Param);
      pointFactory : PointFactory_Access;
      layerPlacementType : LayerPlacementType_Access;
      width : Integer;
      height : Integer;
      x : Integer;
      y : Integer;
   begin
        pointFactory := PointFactory_Package.getInstance;
        layerPlacementType := layerPlacementInterface.getLayerType;
        if (layerPlacementType) = (LayerPlacementTypeFactory_Package.getInstance.MAP) then
            width := layerPlacementInterface.getWidth;
            height := layerPlacementInterface.getHeight;
            x := ((((This.dimension.getX) - (width))) / (2));
            y := ((((This.dimension.getY) - (height))) / (2));
            return pointFactory.createXY (x, y);
        elsif (layerPlacementType) = (LayerPlacementTypeFactory_Package.getInstance.UP) then
            width := layerPlacementInterface.getWidth;
            height := layerPlacementInterface.getHeight;
            x := ((((This.dimension.getX) - (width))) / (2));
            y := -(height);
            return pointFactory.createXY (x, y);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("PlacementType Not Recognized")));
        end if;
   end getPoint;

   procedure getPoint (This : in out LayerPlacer; layerPlacementInterface_Param : access LayerPlacementInterface_Package.LayerPlacementInterface'Class) is
      Java_Result : constant GPoint_Access := LayerPlacer'Class (This).getPoint (layerPlacementInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoint;

end org.allbinary.game.layer.LayerPlacer_Package;


