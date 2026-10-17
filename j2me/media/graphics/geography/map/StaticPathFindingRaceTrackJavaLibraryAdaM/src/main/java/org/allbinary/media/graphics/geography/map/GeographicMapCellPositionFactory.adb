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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out GeographicMapCellPositionFactory'Class) is
   begin
      GeographicMapCellPositionBaseFactory_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return GeographicMapCellPositionFactory_Access is
      This : constant GeographicMapCellPositionFactory_Access := new GeographicMapCellPositionFactory;
   begin
      GeographicMapCellPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out GeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return BasicGeographicMapCellPositionFactory_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      commonStrings : CommonStrings_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      geographicMapCellPositionFactoryCanBeNull : Java_Object_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        geographicMapCellPositionFactoryCanBeNull := GeographicMapCellPositionFactory_Package.hashtable.get (allBinaryTiledLayer.getDataId);
        if (geographicMapCellPositionFactoryCanBeNull) = (null) then
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Creating GeographicMapCellPositionFactory for TileLayer: ")).appendint (Integer (allBinaryTiledLayer.getDataId.intValue)).toString, GeographicMapCellPositionFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
            geographicMapCellPositionFactoryCanBeNull := BasicGeographicMapCellPositionFactory_Package.Create (geographicMapInterface);
            GeographicMapCellPositionFactory_Package.hashtable.put (allBinaryTiledLayer.getDataId, geographicMapCellPositionFactoryCanBeNull);
            return BasicGeographicMapCellPositionFactory_Access (geographicMapCellPositionFactoryCanBeNull);
        else
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Reusing GeographicMapCellPositionFactory for TileLayer: ")).appendint (Integer (allBinaryTiledLayer.getDataId.intValue)).toString, GeographicMapCellPositionFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
            return BasicGeographicMapCellPositionFactory_Access (geographicMapCellPositionFactoryCanBeNull);
        end if;
   end getInstance;

   function getHashtable return ABHashtable_Access is
   begin
        return GeographicMapCellPositionFactory_Package.hashtable;
   end getHashtable;

   procedure getInstance (This : in out GeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      Java_Result : constant BasicGeographicMapCellPositionFactory_Access := GeographicMapCellPositionFactory'Class (This).getInstance (geographicMapInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   hashtable := StdUtil_Package.getInstance.createHashtable;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactory_Package;


