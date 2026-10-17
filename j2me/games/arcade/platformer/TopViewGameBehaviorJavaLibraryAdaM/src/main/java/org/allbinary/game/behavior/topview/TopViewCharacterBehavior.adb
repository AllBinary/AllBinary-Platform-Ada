-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package is

   procedure Initialize_Fields (This : in out TopViewCharacterBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TopViewCharacterBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TopViewCharacterBehavior_Access is
      This : constant TopViewCharacterBehavior_Access := new TopViewCharacterBehavior;
   begin
      TopViewCharacterBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure terrainEvent (This : in out TopViewCharacterBehavior; layer : AllBinaryLayer_Access; direction : Direction_Access; x : Integer; y : Integer; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        null;
   end terrainEvent;

   procedure terrainMove (This : in out TopViewCharacterBehavior; layer : AllBinaryLayer_Access; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; x : Integer; y : Integer) is
   begin
        null;
   end terrainMove;

   function hasSolidBlock (This : in out TopViewCharacterBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) return Boolean is
      size : Integer;
      basicTopViewGeographicMapCellTypeFactory : BasicTopViewGeographicMapCellTypeFactory_Access;
      index : Integer;
   begin
        size := geographicMapInterfaceArray'Length;
        basicTopViewGeographicMapCellTypeFactory := null;
        for index in 0 .. (size) - 1 loop
            basicTopViewGeographicMapCellTypeFactory := BasicTopViewGeographicMapCellTypeFactory_Access (geographicMapInterfaceArray (index).getGeographicMapCellTypeFactory);
            if basicTopViewGeographicMapCellTypeFactory.BLOCK_CELL_TYPE.isType (geographicMapCellTypeArray (index)) then
                return True;
            end if;
        end loop;
        return False;
   end hasSolidBlock;

   procedure hasSolidBlock (This : in out TopViewCharacterBehavior; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access; geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access) is
      Java_Result : constant Boolean := TopViewCharacterBehavior'Class (This).hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasSolidBlock;

end org.allbinary.game.behavior.topview.TopViewCharacterBehavior_Package;


