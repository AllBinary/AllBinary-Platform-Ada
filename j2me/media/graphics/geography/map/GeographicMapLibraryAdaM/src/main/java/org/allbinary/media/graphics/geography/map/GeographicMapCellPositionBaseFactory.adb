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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionBaseFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GeographicMapCellPositionBaseFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GeographicMapCellPositionBaseFactory_Access is
      This : constant GeographicMapCellPositionBaseFactory_Access := new GeographicMapCellPositionBaseFactory;
   begin
      GeographicMapCellPositionBaseFactory_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out GeographicMapCellPositionBaseFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return BasicGeographicMapCellPositionFactory_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        return BasicGeographicMapCellPositionFactory_Package.Create (geographicMapInterface);
   end getInstance;

   procedure getInstance (This : in out GeographicMapCellPositionBaseFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      Java_Result : constant BasicGeographicMapCellPositionFactory_Access := GeographicMapCellPositionBaseFactory'Class (This).getInstance (geographicMapInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;


